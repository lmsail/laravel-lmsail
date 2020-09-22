<?php

namespace App\Admin\Controllers;

use App\Models\Category;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class CategoryController extends Controller
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
            ->header('分类列表')
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
            ->header('分类详情')
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
            ->header('分类编辑')
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
            ->header('新增分类')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Category);

        $grid->id('编号')->sortable();
        $grid->name('分类名称')->display(function($name) {
            return in_array($this->id, [8,9,10,11]) ? '【专栏】' .$name : $name;
        });
        $grid->logo('分类图标')->display(function ($logo) {
            return empty($logo) ? asset('blog/picture/laravel.png') : $logo;
        })->image('', 50, 50);;
        $grid->description('分类描述');
        $grid->post_count('博客总数');
        $grid->cascade('分类归类');
        $grid->order('排序')->sortable();
        $grid->created_at('新增日期');
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
        $show = new Show(Category::findOrFail($id));

        $show->id('编号');
        $show->name('分类名称');
        $show->description('分类描述');
        $show->post_count('博客总数');
        $show->cascade('分类归类');
        $show->order('排序');
        $show->created_at('新增日期');
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
        $form = new Form(new Category);

        $cate = [0 => '顶级分类', 9 => '社区专栏'];
        $cateList = Category::where('cascade', '=', 0)->get();
        foreach ($cateList as $key => $val) {
            $cate[$val->id] = $val->name;
        }

        $form->image('logo', '分类图标');
        $form->select('cascade', '所属分类')->options($cate)->placeholder('请选择上级分类');
        $form->text('name', '分类名称')->rules('required');
        $form->textarea('description', '分类描述');
        $form->number('post_count', '博客总数')->default(0);
        $form->number('order', '排序')->default(50);

        return $form;
    }
}
