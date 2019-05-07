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


        <div class="ui simple item dropdown article stackable nav-user-item  secondary">
            其他  <i class="dropdown icon"></i>

            <div class="ui menu stackable">
                <a href="{{ url('users/list') }}" class="item">
                    <i class="user outline icon"></i> 社区用户
                </a>
                <a href="{{ url('list') }}" class="item">
                    <i class="icon coffee"></i> 社区博文
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
                            <i class="icon paint brush"></i> 新建博文
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