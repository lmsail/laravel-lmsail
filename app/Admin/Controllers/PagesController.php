<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class PagesController extends Controller
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
        $content->header('关于我');

        $content->description('自我简介');
 
        $form = new \Encore\Admin\Widgets\Form();
        $form->action('addabout');

        $form->simplemde('resume','简历')->default(Cache::get('aboutme'))->height(500)->rules('required');
 
        $content->body($form);
        return $content;
    }

    /**
     * 添加关于我数据
     * @return [type] [description]
     */
    public function addabout(Request $request)
    {
        $resume  = $request->input('resume');

        # 写入缓存
        Cache::put('aboutme', $resume);
        return redirect('/admin/aboutme');
    }
}
