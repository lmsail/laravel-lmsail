<?php

namespace App\Http\Controllers\Dynamic;

use App\Models\Dynamic;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Storage;

use App\Http\Controllers\Traits\EquipRedPacket;

class DynamicController extends Controller
{
    use EquipRedPacket;

    /**
     * 论坛首页
     *
     */
    public function index()
    {
        $face = Cache::rememberForever('sail_face_list', function() {
            return Storage::disk('face')->allFiles();
        });

        # 所有动态
        $data = Dynamic::where(['status' => 1])->orderBy('id', 'desc')->with('user')->paginate(config('lmsail.page-limit'));

        # 热门动态
        $hot = Cache::remember('sail_hot_dynamic', 30, function() {
            return Dynamic::where(['status' => 1])->WithOrder()->with('user')->take(10)->get();
        });
        return view('dynamic.index', compact('data', 'face', 'hot'));
    }

    /**
     * 删除动态
     *
     */
    public function deldynamic(Request $request, Dynamic $dynamic)
    {
        if($request->isMethod('POST')) {
            $id = $request->input('id');
            if($id) {
                $result = $dynamic->deleteWithComment($id);
//                $result = Dynamic::where(['id' => $id, 'user_id' => Auth::id()])->delete();
                return $result ? json(200, '动态删除成功！') : json(400, '动态删除失败！');
            }
            return json(400, '参数错误');
        }
        return json(400, '非法操作');
    }

    /**
     * 发布动态
     *
     */
    public function sendDynamic(Request $request, Dynamic $dynamic)
    {
        if($request->isMethod('POST')) {
            $content = $request->input('content');
            if(!Auth::id()) {
                return json(400, '权限不足！');
            }
            if(empty($content) || mb_strlen($content, 'utf8') > 180 || mb_strlen($content, 'utf8') < 5) {
                return json(400, '动态内容填写有误，内容长度在 5 ~ 180 位之间！');
            };
            $result = $dynamic->addBbsDynamic(Auth::id(), $content);
            return $result ? json(200, '添加成功') : json(400, '添加失败');
        }
    }
}
