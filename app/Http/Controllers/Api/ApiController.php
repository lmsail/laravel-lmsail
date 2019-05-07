<?php

namespace App\Http\Controllers\Api;

use App\Models\Blog;
use App\Models\Comment;
use App\Models\Dynamic;
use App\Models\Statistic;
use App\Events\Stationnews;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class ApiController extends Controller
{

    /**
     * 动态点赞
     *
     */
    public function praise(Request $request)
    {
        $type       = $request->input('type');
        $foreign_id = $request->input('foreign_id');
        $to_uid     = $request->input('to_id');
        $user_id    = Auth::id();
        if(!$user_id) {
            return json(400, '请先登录后再进行操作！');
        }
        if(!in_array($type, [1, 2])) {
            return json(400, '非法操作');
        }
        # 检测用户是否已赞
        $table = $type == 1 ? 'dynamicpraise' : 'blogpraise';
        $check = DB::table($table)->where(['foreign_id' => $foreign_id, 'user_id' => $user_id])->first();
        if($check) {
            # 已赞 -> 取消点赞 即删除，同时减少被点赞用户的点赞数统计
            DB::table($table)->where('id', $check->id)->delete();
            Statistic::where('user_id', $to_uid)->decrement('praise');
            if($type == 1) {
                Dynamic::where('id', $foreign_id)->decrement('praise');
            } else {
                Blog::where('id', $foreign_id)->decrement('praise');
            }
            return json(201, '取消点赞');
        } else {
            # 不存在则增加，同时增加被点赞用户的点赞数统计
            DB::table($table)->insert(['foreign_id' => $foreign_id, 'user_id' => $user_id, 'created_at' => date('Y-m-d H:i:s'), 'updated_at' => date('Y-m-d H:i:s')]);
            Statistic::where('user_id', $to_uid)->increment('praise');
            if($type == 1) {
                Dynamic::where('id', $foreign_id)->increment('praise');
            } else {
                Blog::where('id', $foreign_id)->increment('praise');
            }
            \event(new Stationnews($request, 'dynamic-praise')); /* 站内消息推送 */
            return json(200, '点赞成功');
        }
    }

    /**
     * 评论点赞
     */
    public function replypraise(Request $request)
    {
        $foreign_id = $request->input('foreign_id');
        $to_uid     = $request->input('to_id'); /* 暂时未用 */
        $user_id    = Auth::id();
        if(!$user_id) {
            return json(400, '请先登录后再进行操作！');
        }
        # 检测用户是否已赞
        $check = DB::table('commentpraise')->where(['foreign_id' => $foreign_id, 'user_id' => $user_id])->first();
        if($check) {
            # 已赞 -> 取消点赞 即删除，同时减少被点赞用户的点赞数统计
            DB::table('commentpraise')->where('id', $check->id)->delete();
            Comment::where('id', $foreign_id)->decrement('praise');
            return json(201, '取消点赞');
        } else {
            \event(new Stationnews($request, 'reply-praise')); /* 站内消息推送 */
            # 不存在则增加，同时增加被点赞用户的点赞数统计
            DB::table('commentpraise')->insert(['foreign_id' => $foreign_id, 'user_id' => $user_id, 'created_at' => date('Y-m-d H:i:s'), 'updated_at' => date('Y-m-d H:i:s')]);
            Comment::where('id', $foreign_id)->increment('praise');
            return json(200, '点赞成功');
        }
    }

    /**
     * 获取评论
     */
    public function comments(Request $request) {
        $foreign_id = $request->input('foreign_id');
        $comments   = Comment::where('foreign_id', $foreign_id)->orderBy('id', 'desc')->with('user')->take(config('lmsail.page-limit'))->get();
        if($comments) {
            $AtList = collect(collect($comments)->pluck('user'))->pluck('username')->unique();
            return json(200, '获取成功', compact('comments', 'AtList'));
        }
        return json(400, '暂无数据');
    }

    /**
     * 新增动态评论
     *
     */
    public function addcomment(Request $request)
    {
        $content = $request->input('content');
        $foreign_id = $request->input('foreign_id');
        if(empty($content) || empty($foreign_id)) {
            return json(400, '缺少必要参数');
        }
        $result = Comment::create(['content' => analysisAt($content), 'foreign_id' => $foreign_id, 'user_id' => Auth::id()]);
        if($result) {
            analysisAt($content, function($username) {
                # 检测用户是否存在，并给该用户发送站内信，也可扩展为评论回复，日后再说。。。
            });
            Dynamic::where('id', $request->input('foreign_id'))->increment('comment');
            return json(200, '评论成功', Auth::user());
        }
        return json(400, '评论失败');
    }

    /**
     * 博客删除
     */
    public function blogdel(Request $request, Blog $blog)
    {
        if(config('blog.delete') == 0) return json(400, '管理员未开启删除权限~');
        $article_id = $request->input('id');
        $result     = $blog->delUserBlog($article_id);
        if($result) {
            return json(200, '删除成功');
        }
        return json(400, '删除失败');
    }

    /**
     * 图片上传
     *
     * @param Request $request
     * @return false|string
     */
    public function upload(Request $request)
    {
        if($request->isMethod('POST')) {
            $fileCharater = $request->file('file');
            if ($fileCharater->isValid()) {
                //获取文件的扩展名
                $ext = $fileCharater->getClientOriginalExtension();
                if(!in_array( strtolower($ext),['jpeg','jpg','gif','gpeg','png'])){
                    return json_encode(['success' => false, 'message' => '该类型文件不允许添加']);
                }
                //获取文件的绝对路径
                $path = $fileCharater->getRealPath();
                //定义文件名
                $filename = md5(date('Y-m-d-h-i-s')) . '.' . $ext;
                //存储文件。disk里面的public。总的来说，就是调用disk模块里的public配置
                Storage::disk('public')->put($filename, file_get_contents($path));
                return json_encode(['success' => true, 'message' => Storage::url($filename), 'filename' => Storage::url($filename)]);
            }
            return json_encode(['success' => false, 'message' => '图片解析失败']);
        }
    }
}
