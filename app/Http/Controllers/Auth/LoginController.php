<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    /**
     * 登录验证
     * 
     * @param  Request $request [description]
     * @return [type]           [description]
     */
    protected function validateLogin(Request $request){
        $this->validate($request, [
            $this->username() => 'required',
            'password' => 'required',
            'captcha'  => 'required|captcha',
        ],[
            'captcha.required' => '验证码不能为空',
            'captcha.captcha'  => '验证码输入错误'
        ]);
    }

    /**
     * 更改用户登录用户名字段
     *
     * @return string
     */
    public function username()
    {
        return 'username';
    }
}
