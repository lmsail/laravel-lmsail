<?php

namespace App\Admin\Controllers;

use App\Models\Dynamic;
use App\Http\Controllers\Controller;
use App\Models\User;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class DynamicController extends Controller
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
            ->header('动态列表')
            ->description('社区动态')
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
            ->header('动态详情')
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
            ->header('编辑动态信息')
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
        $grid = new Grid(new Dynamic);

        $grid->id('#')->sortable();
        $grid->user_id('作者')->display(function($user_id) {
            $userInfo = User::select('avatar', 'nickname')->where('id', $user_id)->first();
            $userInfo->avatar = !empty($userInfo->avatar) ? $userInfo->avatar : asset('blog/picture/laravel.png');
            return '<img src="'.$userInfo->avatar.'" style="max-width:40px;max-height:40px;border-radius:100%;" class="img img-thumbnail" /> ' . $userInfo->nickname;
        });
        $grid->content('动态内容')->display(function($content) {
            return analysis_face($content);
        });
        $grid->view('查看数')->sortable();
        $grid->praise('点赞数')->sortable();
        $grid->comment('评论数')->display(function($comment) {
            return count($comment);
        })->sortable();
        $grid->status('状态')->using([0 => '已删除', 1 => '正常', 2 => '违规'])->sortable();
        $grid->created_at('发布日期')->sortable();

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
        $show = new Show(Dynamic::findOrFail($id));

        $show->id('动态编号');
        $show->user_id('作者')->unescape()->as(function($user_id) {
            $userInfo = User::select('avatar', 'nickname')->where('id', $user_id)->first();
            $userInfo->avatar = !empty($userInfo->avatar) ? $userInfo->avatar : asset('blog/picture/laravel.png');
            return '<img src="'.$userInfo->avatar.'" style="max-width:40px;max-height:40px;border-radius:100%;" class="img img-thumbnail" /> ' . $userInfo->nickname;
        });
        $show->content('动态内容')->unescape()->as(function($content) {
            return analysis_face($content);
        });
        $show->view('查看数');
        $show->praise('点赞数');
        $show->comment('评论数');
        $show->status('Status')->using([0 => '已删除', 1 => '正常', 2 => '违规']);
        $show->created_at('创建日期');

        $show->comment('评论列表', function($comment) {
            $comment->resource('/admin/comment'); // 对应操作的控制器
            $comment->id('编号');
            $comment->user_id('评论用户')->display(function($user_id) {
                $userInfo = User::select('avatar', 'nickname')->where('id', $user_id)->first();
                $userInfo->avatar = !empty($userInfo->avatar) ? $userInfo->avatar : asset('blog/picture/laravel.png');
                return '<img src="'.$userInfo->avatar.'" style="max-width:40px;max-height:40px;border-radius:100%;" class="img img-thumbnail" /> ' . $userInfo->nickname;
            });
            $comment->content('评论内容')->display(function($content) {
                return analysisAt($content);
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
        $form = new Form(new Dynamic);

        $user_list = User::select('id', 'nickname')->get()->toArray();
        $users = [];
        foreach ($user_list as $key => $val) {
            $users[$val['id']] = '[' . $val['id'] . '] ' . $val['nickname'];
        }

        $form->select('user_id', '用户')->options($users)->placeholder('请选择用户')->rules('required');
        $form->simplemde('content', '内容')->rules('required');
        $form->number('view', '查看数')->default(0);
        $form->number('praise', '点赞数')->default(0);
        $form->number('comment', '评论数')->default(0);
        $form->radio('status', '状态')->options([
            0 => ' 已删除',
            1 => ' 正常',
            2 => ' 违规'
        ])->default(1);

        return $form;
    }
}
