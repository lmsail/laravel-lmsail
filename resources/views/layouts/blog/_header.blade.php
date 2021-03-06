<nav class="ui main borderless menu top stackable topnav" id="topnav">
    <div class="ui container">

        <div class="ui inline scrolling community-nav dropdown mr-2" style="padding: 15px 0 15px 15px;display: -webkit-box;display: -ms-flexbox;display: flex;-webkit-box-align: center;-ms-flex-align: center;align-items: center;">
            <div class="text site-logo" style="color:#888888;display: flex;">
                <img class="ui image" style="width:26px;height:26px;margin-top:-2px;" src="{{ config('base.logo') ? asset('uploads/' . config('base.logo')) : asset('blog/picture/laravel.png') }}">
                <span class="site-name">{{ config('base.web_name') }}</span>
            </div>
        </div>

        <a class="item header right menu " style="display:none">
            <i class="icon align justify"></i>
        </a>

        <a href="{{ url('/') }}" class="item secondary">首页</a>

        <a href="{{ url('users/list') }}" class="item">用户</a>

        <a href="{{ url('special') }}" class="item">专栏</a>

        <div class="ui multiple item dropdown blog">
            博客  <i class="dropdown icon"></i>
            <div class="menu">
                <div class="ui icon search input">
                    <i class="search icon"></i>
                    <input type="text" placeholder="输入关键字...">
                </div>
                <div class="scrolling menu">
                    <a href="{{ route('list') }}">
                        <div class="item">
                            <i class="envira icon"></i>&nbsp;&nbsp;&nbsp;全部博文 
                        </div>
                    </a>  
                    @foreach ($categories as $val)
                    <a href="{{ route('list', ['cateid' => $val->id]) }}">
                        <div class="item">
                            <img class="ui image display-inline-block mr-3" style="width:16px;height:16px;margin-top:-3px" src="{{ $val->logo ? '/uploads/' . $val->logo : asset('blog/picture/laravel.png') }}">
                            {{ $val->name }} ({{ $val->post_count }}) 
                        </div>
                    </a>  
                    @endforeach
                </div> 
            </div>
        </div>

        <a href="{{ url('users/aboutme') }}" class="item secondary">关于我</a>

        <div class="ui simple item dropdown article stackable nav-user-item  secondary">
            其他  <i class="dropdown icon"></i>

            <div class="ui menu stackable">
                <a href="https://github.com/MarichMarck" target="_blank" class="item">
                    <i class="github outline icon"></i> GitHub地址
                </a>
                <a href="https://gitee.com/www.chinarbq.com" target="_blank" class="item">
                    <i class="icon git"></i> Gitree地址
                </a>
            </div>
        </div>

        <form class="ui fluid category search item secondary hide-on-991" onsubmit="$(this).addClass('loading')" action="{{ url('search') }}" method="GET">
            <div class="ui icon input">
                <input class="prompt" name="q" value="" type="text" placeholder="搜索" value="">
                <i class="search icon"></i>
            </div>
            <div class="results"></div>
        </form>

        @guest
            <div class=" right menu stackable secondary">
                <div class="item rm-link-color">
                    <a class="mr-4 no-pjax login_required" href="{{ url('login') }}"><i class="icon sign in "></i> 登录 </a>
                    <a class="no-pjax" href="{{ url('register') }}" style="margin-left: 10px;"><i class="icon user add"></i> 注册 </a>
                </div>
            </div>
        @else
            <div class=" right menu stackable secondary">
                <div class="ui simple item dropdown article stackable nav-user-item  secondary">
                    <i class="icon paint brush"></i>  <i class="dropdown icon"></i>
                    <div class="ui menu stackable">
                        <a href="{{ url('release') }}" class="item no-pjax">
                            <i class="coffee icon"></i> 发布博客
                        </a>
                        <a href="{{ url('release') }}" class="item no-pjax">
                            <i class="book icon"></i> 发布专栏文章
                        </a>
                    </div>
                </div>

                <a class="item" href="" title="消息通知">
                    <span class="ui basic circular label notification" id="notification-count">0</span>
                </a>

                <div class="ui simple item dropdown article stackable nav-user-item">
                    <img class="ui avatar image" src="{{ Auth::user()->avatar ? Auth::user()->avatar : asset('blog/picture/laravel.png') }}"> &nbsp;

                    {{ Auth::user()->nickname }}  <i class="dropdown icon"></i>

                    <div class="ui menu stackable">

                        <a href="{{ url('blog', [Auth::user()->username, Auth::id()]) }}" class="item">
                            <i class="icon user"></i>
                            个人中心
                        </a>

                        <a href="{{ url('users', [Auth::user()->id, 'edit']) }}" class="item">
                            <i class="edit outline icon"></i>
                            编辑资料
                        </a>

                        @if(Auth::user()->id == 1)
                            <a href="{{ url('admin') }}" target="_blank" class="item">
                                <i class="icon settings"></i>
                                后台管理
                            </a>
                        @endif

                        <a class="item no-pjax" href="{{ route('logout') }}" data-url="" data-method="POST" data-prompt="您确定要退出登录吗？" title="退出登录" style="cursor: pointer;">
                            <i class="icon sign out"></i>
                            退出
                        </a>
                    </div>
                </div>
            </div>
        @endguest
    </div>
</nav>