<?php

namespace App\Admin\Controllers;

use App\Models\Blog;
use App\Http\Controllers\Controller;
use App\Models\User;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Illuminate\Support\Facades\Request;

class BlogController extends Controller
{
    use HasResourceActions;

    /**
     * Index interface.
     *
     * @param Content $content
     * @return Content
     */
    public function index(Content $content)
    {
        return $content
            ->header('博客列表')
            ->description('社区博客')
            ->body($this->grid());
    }

    /**
     * Show interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function show($id, Content $content)
    {
        return $content
            ->header('博客详情')
            ->body($this->detail($id));
    }

    /**
     * Edit interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function edit($id, Content $content)
    {
        return $content
            ->header('Edit')
            ->description('description')
            ->body($this->form()->edit($id));
    }

    /**
     * Create interface.
     *
     * @param Content $content
     * @return Content
     */
    public function create(Content $content)
    {
        return $content
            ->header('Create')
            ->description('description')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Blog);

        $grid->id('#')->sortable();
        $grid->user_id('作者')->display(function($user_id) {
            $userInfo = User::select('avatar', 'nickname')->where('id', $user_id)->first();
            $userInfo->avatar = !empty($userInfo->avatar) ? $userInfo->avatar : asset('blog/picture/laravel.png');
            return '<img src="'.$userInfo->avatar.'" style="max-width:40px;max-height:40px;border-radius:100%;" class="img img-thumbnail" /> ' . $userInfo->nickname;
        });
        $grid->title('标题');
        $grid->tags('标签')->display(function($tags) {
            $tags = explode(',', $tags);
            $tagStr = '';
            foreach ($tags as $v) {
                $tagStr .= "<span class='label label-success'>$v</span>&nbsp;&nbsp;";
            }
            return $tagStr;
        });
        $grid->view('查看数')->sortable();
        $grid->praise('点赞数')->sortable();
        $grid->comment('评论数')->display(function($comment) {
            return count($comment);
        })->sortable();
        $grid->status('状态')->using([0 => '已删除', 1 => '正常', 2 => '违规'])->sortable();
        $grid->created_at('创建日期')->sortable();
        $grid->updated_at('更新日期')->sortable();

        # 数据搜索
        $grid->filter(function ($filter) {
            $filter->like('title', '标题');
            $filter->equal('status', '状态')->select([
                0 => '已删除', 1 => '正常', 2 => '违规'
            ]);
            $filter->between('created_at', '发表日期')->datetime();
        });

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Blog::findOrFail($id));

        $show->id('用户ID');
        $show->user_id('作者')->unescape()->as(function($user_id) {
            $userInfo = User::select('avatar', 'nickname')->where('id', $user_id)->first();
            $userInfo->avatar = !empty($userInfo->avatar) ? $userInfo->avatar : asset('blog/picture/laravel.png');
            return '<img src="'.$userInfo->avatar.'" style="max-width:40px;max-height:40px;border-radius:100%;" class="img img-thumbnail" /> ' . $userInfo->nickname;
        });
        $show->title('标题');
        $show->content('内容')->unescape()->as(function($content) {
            return analysis_face($content);
        });
        $show->tags('标签')->label();
        $show->view('查看数');
        $show->praise('点赞数');
        $show->comment('评论数');
        $show->status('状态')->unescape()->as(function ($status) {
            return $status == 0 ? '已删除' : ($status == 2 ? '违规' : '正常');
        });
        $show->created_at('创建日期');
        $show->updated_at('最后更新日期');

        $show->comment('评论列表', function($comment) {
            $comment->resource('/admin/comment'); // 对应操作的控制器
            $comment->id('编号');
            $comment->user_id('评论用户')->display(function($user_id) {
                $userInfo = User::select('avatar', 'nickname')->where('id', $user_id)->first();
                $userInfo->avatar = !empty($userInfo->avatar) ? $userInfo->avatar : asset('blog/picture/laravel.png');
                return '<img src="'.$userInfo->avatar.'" style="max-width:40px;max-height:40px;border-radius:100%;" class="img img-thumbnail" /> ' . $userInfo->nickname;
            });
            $comment->content('评论内容')->display(function($content) {
                return analysis_face($content);
            });
            $comment->created_at('评论日期');
        });

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Blog);

        $user_list = User::select('id', 'nickname')->get()->toArray();
        $users = [];
        foreach ($user_list as $key => $val) {
            $users[$val['id']] = '[' . $val['id'] . '] ' . $val['nickname'];
        }

        $form->select('user_id', '用户')->options($users)->placeholder('请选择用户')->rules('required');
        $form->text('title', '标题')->rules('required');
        $form->simplemde('content', '内容')->rules('required');
        $form->tagsinput('tags', '标签')->placeholder('回车确认');
        $form->number('view', '查看数')->default(0);
        $form->number('praise', '点赞数')->default(0);
        $form->number('comment', '评论数')->default(0);
        $form->radio('status', '状态')->options([
            0 => ' 已删除',
            2 => ' 违规',
            1 => ' 正常'
        ])->default(1);

        return $form;
    }
}
