<?php

namespace App\Admin\Controllers;

use App\Models\Blog;
use App\Models\Comment;
use App\Http\Controllers\Controller;
use App\Models\User;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class CommentController extends Controller
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
            ->header('评论列表')
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
            ->header('评论详情')
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
            ->header('修改评论')
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
            ->header('新建评论')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Comment);

        $grid->id('编号')->sortable();
        $grid->foreign_id('关联ID');
        $grid->user_id('用户')->display(function($user_id) {
            $userInfo = User::select('avatar', 'nickname')->where('id', $user_id)->first();
            $userInfo->avatar = !empty($userInfo->avatar) ? $userInfo->avatar : asset('blog/picture/laravel.png');
            return '<img src="'.$userInfo->avatar.'" style="max-width:40px;max-height:40px;border-radius:100%;" class="img img-thumbnail" /> ' . $userInfo->nickname;
        });
        $grid->content('评论内容')->display(function($content) {
            return analysisAt($content);
        });
        $grid->praise('点赞数')->sortable();
        $grid->is_reply('回复状态')->using([0 => '否', 1 => '是']);
        $grid->created_at('创建日期')->sortable();
        $grid->updated_at('更新日期');

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
        $show = new Show(Comment::findOrFail($id));

        $show->id('编号');
        $show->foreign_id('关联ID');
        $show->user_id('用户ID')->unescape()->as(function($user_id) {
            $userInfo = User::select('avatar', 'nickname')->where('id', $user_id)->first();
            $userInfo->avatar = !empty($userInfo->avatar) ? $userInfo->avatar : asset('blog/picture/laravel.png');
            return '<img src="'.$userInfo->avatar.'" style="max-width:40px;max-height:40px;border-radius:100%;" class="img img-thumbnail" /> ' . $userInfo->nickname;
        });
        $show->content('评论内容')->unescape()->as(function($content) {
            return analysisAt($content);
        });
        $show->praise('点赞数');
        $show->is_reply('回复状态')->using([0 => '否', 1 => '是']);
        $show->created_at('创建日期');
        $show->updated_at('更新日期');

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Comment);

        $user_list = User::select('id', 'nickname')->get()->toArray();
        $users = [];
        foreach ($user_list as $key => $val) {
            $users[$val['id']] = '[' . $val['id'] . '] ' . $val['nickname'];
        }

        $blog_list = Blog::select('id', 'title')->get()->toArray();
        $blogs = [];
        foreach ($blog_list as $key => $val) {
            $blogs[$val['id']] = '[' . $val['id'] . '] ' . $val['title'];
        }

        $form->select('user_id', '用户')->options($users)->placeholder('请选择用户')->rules('required');
        $form->select('foreign_id', '关联博客')->options($blogs)->placeholder('请选择关联博客')->rules('required');
        $form->number('praise', '点赞数');
        $form->simplemde('content', '评论内容');
        $form->switch('is_reply', '回复状态');

        return $form;
    }
}
