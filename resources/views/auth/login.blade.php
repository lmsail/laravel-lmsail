<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=yes">
    <link href="/favicon.ico" rel="shortcut icon" />
    <title>{{ config('lmsail.head.title') }}</title>
    <link rel="stylesheet" href="{{ asset('blog/login/css/qietu.css') }}">
    <link rel="stylesheet" href="{{ asset('blog/login/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('blog/login/css/style_tr.css') }}">
    <link rel="stylesheet" href="{{ asset('blog/login/css/login.css') }}">
    <link rel="stylesheet" href="{{ asset('blog/login/css/responsive.css') }}">
    <style>
        body {
            background: url("{{ asset('blog/login/images/js-index-banner_1.jpg') }}") no-repeat;
            -webkit-background-size: 100% 100%;
            background-size: 100% 100%;
            height: 100vh;
        }
        .login2, .banner,.copyright {
            background: none;
        }
        .banner {
            height: 200px;
        }
        .text-danger {
            color: red;
        }
    </style>
</head>
<body>
<!--头部-->
<div class="header bj-3d7bf8">
    <div class="wrapper">
        <div class="logo">
            <a href="/" style="font-size: 30px;">
                <img src="{{ asset('blog/login/images/logo.png') }}" style="width: 70px;" alt=""> {{ config('lmsail.web_name') }}
            </a>
        </div>
    </div>
</div>
<!--内容-->
<div class="banner">
    <div class="wrapper">
        <h2 class="wow" style="letter-spacing: 3px">{{ __('Personal Login') }}</h2>
        <p class="wow" data-wow-delay='.5s'>- Personal Login -</p>
    </div>
</div>
<div class="login2">
    <div class="login-wp">
        <div class="login-hd">
            <h2>欢迎登录</h2>
        </div>
        <div class="login-bd">
            <form name="defaultForm" method="post" action="{{ route('login') }}">
                @csrf
                <div class="account-main c-center">
                    <div>
                        <div class="account-input-cont c-relative">
                            <input required type="text" name="username" placeholder="账号" autocomplete="off" class="account-input">
                            <div class="c-input-checked-icon c-hide login-email-checked" style="display: block;"></div>
                        </div>
                        <div class="account-tip-cont" style="display: none;">
                            <div class="c-error-icon c-hide" style="display: none;"></div>
                            <div class="c-tip-text">请输入您的账号</div>
                        </div>
                    </div>
                    <div>
                        <div class="account-input-cont c-relative">
                            <input required type="password" name="password" placeholder="密码" autocomplete="off" class="account-input">
                            <div class="c-input-checked-icon c-hide login-password-checked"></div>
                        </div>
                    </div>
                    @if($errors->has('username'))
                        <div class="col-md-12">
                            <p class="text-danger text-left"><strong>{{$errors->first('username')}}</strong></p>
                        </div>
                    @endif
                    <div class="col-md-12">
                        <div class="account-input-cont" style="position: relative;">
                            <input required type="text" name="captcha" placeholder="验证码" autocomplete="off" class="account-input">
                            <div class="c-input-checked-icon c-hide login-password-checked"></div>
                            <img src="{{captcha_src()}}" onclick="this.src='{{captcha_src()}}'+Math.random()">
                        </div>
                    </div>
                    @if($errors->has('captcha'))
                        <div class="col-md-12">
                            <p class="text-danger text-left"><strong>{{$errors->first('captcha')}}</strong></p>
                        </div>
                    @endif
                    <div>
                        <div style="margin-top: 20px;margin-bottom: 10px;"></div>
                        <div class="account-tip-cont c-hide">
                            <div class="c-error-icon hide"></div>
                            <div class="c-tip-text c-error-text"></div>
                        </div>
                    </div>
                </div>
                <div class="gtpwd">
                    <div class="gtpwd-l">
                        <label>
                            <input type="checkbox" class="checkbox1" name="remember" id="remember" checked />
                            <label for="remember"></label>记住账户
                        </label>
                    </div>
                    <div class="gtpwd-r">
                        <a href="javascript:;">忘记密码？</a>
                    </div>
                </div>
                <div class="login-btn">
                    <input type="submit" class="btn account-login-btn" value="登录" />
                </div>
            </form>
        </div>
    </div>
</div>
<!--底部-->
<div class="copyright">
    <div class="wrapper">
        {{ config('lmsail.foot.copyleft_word') }} <a href="#" style="color: #fff;">{{ config('lmsail.web_name') }}</a> · {{ config('lmsail.foot.copyright_word') }}
    </div>
</div>
</body>
</html>
