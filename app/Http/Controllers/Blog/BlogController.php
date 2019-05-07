<?php

namespace App\Http\Controllers\Blog;

use App\Events\Stationnews;
use App\Models\Blog;
use App\Models\Comment;
use App\Models\Dynamic;
use App\Models\Praise;
use App\Models\Statistic;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class BlogController extends Controller
{
    /**
     * 用户blog列表页
     *
     */
    public function blog(Request $request, Blog $blog)
    {
        # 所有文章
        $statistics = $request->input('statistics');
        $user_id    = $request->route('uid');
        $type       = $request->input('type', 'updated_at');

        $data = $blog->WhereUserId($user_id)->WithOrder($type);
        foreach ($data as $key => $val) {
            if(!empty($val->tags)) {
                $val->tags = explode(',', $val->tags);
            }
        }
        # 增加用户主页浏览量
        Statistic::where('user_id', $user_id)->increment('view');
        return view('blog.blog', compact('data', 'statistics', 'request'));
    }

    /**
     * 文章发布页面
     *
     */
    public function release(Request $request, Blog $blog, Statistic $statistic)
    {
        if($request->isMethod('POST'))
        {
            $this->validate($request, [
                'title'   => 'bail|required|min:5|max:100',
                'content' => 'bail|required|min:20',
            ]);
            $result = $blog->createUserBlog($request, Auth::id());
            if($result) {
                $statistic->where(['user_id' => Auth::id()])->increment('blognums');
                return redirect(url('article', [$result->id, Auth::id()]))->with('success', '文章发布成功咯！');
            }
            return redirect('release')->with('error', 'ERROR：文章发布失败啦！');
        }

        return view('blog.article.release');
    }

    /**
     * 博客修改
     */
    public function blogedit(Request $request, Blog $blog)
    {
        if($request->isMethod('POST'))
        {
            $this->validate($request, [
                'id'      => 'bail|required',
                'title'   => 'bail|required|min:5|max:100',
                'content' => 'bail|required|min:20',
            ]);
            $result = $blog->saveUserBlog($request);
            if($result) {
                return redirect(url('article', [$request->id, Auth::id()]))->with('success', '文章修改生效咯！');
            }
            return redirect('blogedit')->with('error', 'ERROR：文章修改失败啦！');
        }

        if(!empty($request->route('id'))) {
            $details = Blog::find($request->route('id'));
        }

        return view('blog.article.edit', compact('details'));
    }

    /**
     * 用户blog文章详情页
     *
     */
    public function article(Request $request, Praise $praise, Blog $blog)
    {
        $face = Storage::disk('face')->allFiles();
        $statistics = $request->input('statistics');
        $id         = $request->route('id');
        $details    = Blog::find($id);
        if($details['tags']) {
            $details['tags'] = explode(',', $details['tags']);
        }
        $blog->incViewCount($id);
        $praise  = $praise->getPraiseUsers($id);    /* 查询前18位点赞用户 */
        $comment = Comment::where('foreign_id', $id)->orderBy('id', 'desc')->with('user')->paginate(config('lmsail.page-limit')); /* 查询评论 */
        $page    = $request->input('page');
        return view('blog.article.article', compact('details', 'statistics', 'praise', 'face', 'comment', 'page'));
    }

    /**
     * 添加评论
     */
    public function comment(Request $request)
    {
        $this->validate($request, [
            'content'    => 'bail|required|min:10',
            'foreign_id' => 'required'
        ]);
        $result = Comment::create(['content' => $request->input('content'), 'foreign_id' => $request->input('foreign_id'), 'user_id' => Auth::id()]);
        if($result) {
            # 增加该文章评论数量统计，增加事件，用于后续消息推送等服务
            \event(new Stationnews($request, 'blog-comment')); /* 站内消息推送 */
            Blog::where('id', $request->input('foreign_id'))->increment('comment');
            return back()->with(['comment-success' => '评论成功', 'to' => '#comment']);
        } else {
            return back()->withErrors(['error' => '服务器处理失败：评论失败', 'to' => '#comment']);
        }
    }

    /**
     * 博客列表
     */
    public function list(Request $request) {
        $data = Blog::where(['status' => 1])->WithOrder($request->input('type', 'updated_at'));
        foreach ($data as $key => $val) {
            if(!empty($val->tags)) {
                $val->tags = explode(',', $val->tags);
            }
        }
        return view('blog.article.list', compact('data', 'request'));
    }

    /**
     * 博客搜索结果页
     */
    public function search(Request $request)
    {
        $keyword = $request->input('q', config('blog.search_default'));

        # 统计查询结果总数  博客  动态   用户
        $blogCount    = Blog::withWhereTitle($keyword)->count();
        $dynamicCount = Dynamic::withWhereContent($keyword)->count();

        # 默认检索博客
        $blogList = Blog::withWhereTitle($keyword)->orderBy('updated_at', 'desc')->with('user')->paginate(config('lmsail.page-limit'));

        return view('blog.search.search', compact('keyword', 'blogCount', 'dynamicCount', 'blogList'));
    }
}
