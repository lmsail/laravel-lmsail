<?php

namespace App\Http\Controllers\User;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class UsersController extends Controller
{
    /**
     * 用户资料编辑
     *
     */
    public function edit(Request $request)
    {
        if($request->isMethod('POST')) {

            $uid = Auth::id();
            $type = $request->input('edit-type');
            if(isset($type) && $type == 'edit-user-info') {
                # 更新用户资料
                $result = $this->saveUserInfo($request, $uid);
                if($result) {
                    return back()->with('success', '用户信息更新成功');
                }
                return back()->withErrors(['error' => '用户信息未更改或昵称or邮箱已存在']);
            }

            # 更新用户头像
            $fileCharater = $request->file('avatar');
            if ($fileCharater->isValid()) {
                //获取文件的扩展名
                $ext = $fileCharater->getClientOriginalExtension();
                if(!in_array( strtolower($ext),['jpeg', 'jpg', 'gif', 'gpeg', 'png'])){
                    return back()->withErrors(['avatar' => '该类型文件不允许添加']);
                }
                $path = $fileCharater->getRealPath();
                $filename = md5(date('Y-m-d-h-i-s')) . '.' . $ext;
                Storage::disk('public')->put($filename, file_get_contents($path));
                $avatar = Storage::url($filename);
                User::where(['id' => $uid])->update(['avatar' => $avatar]);
                return back();
            }
            return back()->withErrors(['avatar' => '请选择头像']);
        }

        # 查询用户信息
        $userInfo = User::select('id', 'avatar', 'email', 'sex', 'username', 'nickname', 'autograph', 'personal_website', 'introduction')->find($request->route('uid'));
        return view('blog.users.edit', compact('userInfo'));
    }

    /**
     * 保存用户资料
     *
     */
    public function saveUserInfo(Request $request, $uid)
    {
        $this->validate($request, [
            'nickname'  => 'required|min:2|max:10',
            'sex'       => 'required|max:1',
            'email'     => 'required|min:10',
        ]);
        # 检测用户名，邮箱是否重复
        $data = $request->all();
        $check = User::where(['nickname' => $data['nickname']])->whereNotIn('id', [$uid])->first();
        if($check) return false;
        unset($data['_token'], $data['edit-type'], $data['/' . $request->path()]);
        return User::where(['id' => $uid])->update($data);
    }

    /**
     * 用户列表
     */
    public function list() {
        $list = User::select('id', 'avatar', 'email', 'username', 'nickname', 'autograph', 'special', 'introduction')   ->with(['blog' => function($query) {
            $query->select('id', 'user_id', 'title')->orderBy('id', 'desc')->limit(3);
        }])->paginate(config('lmsail.page-limit'));
        return view('blog.users.list', compact('list'));
    }
}
