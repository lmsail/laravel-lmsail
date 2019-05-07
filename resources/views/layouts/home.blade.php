<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <title>@yield('title')@if(request()->path() !== '/') - {{ config('lmsail.head.title') }} @endif</title>
    <meta name="keywords" content="@yield('keywords')" />
    <meta name="description" content="@yield('description')" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- cloudui plugins:css -->
    <link rel="stylesheet" href="{{ asset('cloudui/vendors/iconfonts/simple-line-icon/css/simple-line-icons.css') }}">
    <link rel="stylesheet" href="{{ asset('cloudui/vendors/iconfonts/flag-icon-css/css/flag-icon.min.css') }}">
    <link rel="stylesheet" href="{{ asset('cloudui/vendors/css/vendor.bundle.base.css') }}">
    <link rel="stylesheet" href="{{ asset('cloudui/vendors/css/vendor.bundle.addons.css') }}">
    <link rel="stylesheet" href="{{ asset('cloudui/css/style.css') }}">
    <style>
        .margin-t-15{margin-top:15px}
        .margin-r-10{margin-right:10px}
        .error{background:#fee9ea}
        .pagination{float:right}
        .info{background:#d9edf7}
        .success{background:#d0e9c6}
        .forms-sample{border-radius:2px;background:#f0f2f7;padding:20px 15px 15px 15px}
        input{color:#000;font-size:14px!important;font-weight:700!important}
        input::-webkit-input-placeholder{font-size:13px!important;font-weight:400}
        .statistics .badge{font-size:16px;font-weight:500}
    </style>
    @yield('css')
</head>
<body>

<div id="app" class="container-scroller">
    <nav class="navbar horizontal-layout col-lg-12 col-12 p-0">
        <div class="nav-top flex-grow-1">
            <div class="container d-flex flex-row h-100 align-items-center">
                <div class="text-center navbar-brand-wrapper d-flex align-items-center">
                    <a class="navbar-brand brand-logo" href="/" style="width: 40px;heigth: 40px;margin-right: 60px;color: #fff;padding-left: 50px;background: url('http://xiafa.hppcg.cn/static/common/alipay.png') no-repeat;">
                        Epay管理终端
                    </a>
                </div>
                <div class="navbar-menu-wrapper d-flex align-items-center justify-content-between flex-grow-1">
                    <ul class="navbar-nav navbar-nav-right mr-0 ml-auto">
                        <li class="nav-item nav-profile dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
                                <img src="{{ asset('images/logo.png') }}" alt="profile"/>
                                <span class="nav-profile-name">{{ Auth::user()->nickname }}</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                                <a class="dropdown-item">
                                    <i class="icon-settings text-primary mr-2"></i>
                                    {{ __('Setting') }}
                                </a>

                                @if (Auth::user()->id == 1)
                                    <a href="{{ url('admin-index') }}" class="dropdown-item">
                                        <i class="icon-speedometer text-primary mr-2"></i>
                                        {{ __('Admin Center') }}
                                    </a>
                                @endif

                                <div class="dropdown-divider"></div>
                                <a href="{{ route('logout') }}" class="dropdown-item">
                                    <i class="icon-logout text-primary mr-2"></i>
                                    {{ __('Logout') }}
                                </a>
                            </div>
                        </li>
                    </ul>
                    <button class="navbar-toggler align-self-center" type="button" data-toggle="minimize">
                        <span class="icon-menu text-dark"></span>
                    </button>
                </div>
            </div>
        </div>

        <div class="nav-bottom">
            <div class="container">
                <ul class="nav page-navigation">
                    <li class="nav-item">
                        <a href="/" class="nav-link">
                            <i class="link-icon icon-screen-desktop"></i>
                            <span class="menu-title">控制台</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="link-icon icon-paypal"></i>
                            <span class="menu-title">平台综合统计</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="submenu">
                            <ul class="submenu-item">
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ url('statistics') }}">数据列表</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="link-icon icon-docs"></i>
                            <span class="menu-title">订单管理</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="submenu">
                            <ul class="submenu-item">
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ url('/') }}">订单列表</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="link-icon icon-graduation"></i>
                            <span class="menu-title">商户管理</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="submenu">
                            <ul class="submenu-item">
                                <li class="nav-item">
                                    <a class="nav-link" href="/merlist.html">商户列表</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/addmerchant.html">新增商户</a>
                                </li>
                            </ul>
                        </div>
                    </li>

                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="link-icon icon-settings"></i>
                            <span class="menu-title">系统设置</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="submenu">
                            <ul class="submenu-item">
                                <li class="nav-item">
                                    <a class="nav-link" href="/payip.html">访问控制</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/syslog.html">操作日志</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container-fluid page-body-wrapper">
        <div class="main-panel">
            <div class="content-wrapper">
                @yield('content')
            </div>
        </div>
    </div>

    <footer class="footer" style="display: none">
        <div class="w-100 clearfix">
            <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">{{ config('lmsail.foot.copyleft_word') }} <a href="" target="_blank">LmSail</a>. 保留所有权利.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">{{ config('lmsail.foot.copyright_word') }} <i class="icon-heart text-danger"></i></span>
        </div>
    </footer>
</div>

<!-- plugins:js -->
<script src="{{ asset('cloudui/vendors/js/vendor.bundle.base.js') }}"></script>
<script src="{{ asset('cloudui/vendors/js/vendor.bundle.addons.js') }}"></script>
<script src="{{ asset('cloudui/js/template.js') }}"></script>
<script src="{{ asset('cloudui/js/dashboard.js') }}"></script>
@yield('js')
</body>
</html>
