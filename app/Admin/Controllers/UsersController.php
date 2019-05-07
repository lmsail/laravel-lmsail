<?php

namespace App\Admin\Controllers;

use App\Models\User;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class UsersController extends Controller
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
            ->header('用户列表')
            ->description('社区注册用户')
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
            ->header('用户详情')
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
            ->header('编辑用户资料')
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
            ->header('新增用户')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new User);

        $grid->id('#')->sortable();
        $grid->avatar('头像')->display(function ($avatar) {
            return empty($avatar) ? asset('blog/picture/laravel.png') : $avatar;
        })->image('', 50, 50);
        $grid->username('用户名');
        $grid->nickname('昵称');
        $grid->sex('性别')->using([0 => '女', 1 => '男', 2 => '保密']);
        $grid->email('邮箱');
        $grid->personal_website('个人主页')->link();
        $grid->special('是否特殊')->display(function($special) {
            return $special == 1 ? '<i class="fa fa-vimeo" style="color: #FFB800;"></i>' : '无';
        })->sortable();
        $grid->created_at('注册日期');

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
        $show = new Show(User::findOrFail($id));

        $show->id('用户ID');
        $show->avatar('头像')->unescape()->as(function ($avatar) {
            return empty($avatar) ? asset('blog/picture/laravel.png') : $avatar;
        })->image('', 50, 50);
        $show->username('用户名');
        $show->nickname('昵称');
        $show->autograph('个性签名');
        $show->introduction('个人简介');
        $show->personal_website('个人主页');
        $show->sex('性别')->using([0 => '女', 1 => '男', 2 => '保密']);
        $show->email('邮箱');
        $show->special('是否特殊')->unescape()->as(function($special) {
            return $special == 1 ? '<i class="fa fa-vimeo" style="color: #FFB800;"></i>' : '无';
        });
        $show->created_at('创建日期');
        $show->updated_at('最后活跃日期');

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new User);

        $form->text('username', '用户名');
        $form->text('nickname', '昵称');
        $form->text('autograph', '个性签名');
        $form->text('introduction', '个人简介');
        $form->text('personal_website', '个人主页');
        $form->radio('sex', '性别')->options([
            1 => ' 男生',
            0 => ' 女生',
            2 => ' 保密'
        ]);
        $form->image('avatar', '头像');
        $form->email('email', '邮箱');
        $form->password('password', '登录密码');
        $form->switch('special', '是否特殊');

        return $form;
    }
}
