<?php

namespace App\Http\Controllers\Blog;

use App\Models\Category;
use App\Models\Blog;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SpecialController extends Controller
{
    /**
     * 专题列表
     * @desc 由博客转变而来，旨在突出分类主题，本质为博客
     */
    public function special() {
        $list = Category::where('cascade', '=', 9)->orderBy('order', 'desc')->get();
        return view('special.special', compact('list'));
    }

    /**
     * 专栏详情 - 专栏文章列表
     * @desc  本质上和博客分类类似，但意义不同
     */
    public function specialist(Request $request) {
        $special_id = $request->route('id');
        $list = Blog::where(['community_id' => $special_id])->orderBy('id', 'desc')->with('user')->paginate(config('lmsail.page-limit'));

        # 专栏详情
        $specialInfo = Category::find($special_id);
        return view('special.specialist', compact('list', 'specialInfo'));
    }
}
