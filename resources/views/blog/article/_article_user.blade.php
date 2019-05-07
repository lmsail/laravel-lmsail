<div class="item header blog-article sidebar">

    <div class="ui card responsive" style="padding: 6px;">

        <div class="content">
            <a href="{{ url('blog', [$statistics['userinfo']->username, $statistics['userinfo']->id]) }}" class="rm-link-color">
                <img class="ui circular image right floated image-44" src="{{ $statistics['userinfo']->avatar ? $statistics['userinfo']->avatar : asset('blog/picture/laravel.png') }}">
            </a>
            <div class="header" style="line-height: 28px;margin-bottom: 5px;">
                <a href="{{ url('blog', [$statistics['userinfo']->username, $statistics['userinfo']->id]) }}" class="rm-link-color" style="font-weight: bold;font-size: 15px;">
                    {{ $statistics['userinfo']->nickname }} @if($statistics['userinfo']->special == 1) <i data-content="社区 `创建者` 与 `贡献者` 特殊标识" class="ui popover vimeo square icon" style="color: #FFB800;"></i> @endif
                </a>
            </div>

            <div class="meta" style="font-size: 13px;">
                {{ $statistics['userinfo']->username }} @ {{ $statistics['userinfo']->email }}
            </div>
        </div>

        <div class="statistics" style="border-top: 1px solid rgba(0, 0, 0, 0.05);border-bottom: 1px solid rgba(0, 0, 0, 0.05);padding-bottom: 15px;padding-top: 10px;">
            <div class="ui four statistics">
                <div class="statistic ui popover" data-content="博客文章总数">
                    <div class="label" style="font-size: 1em!important;font-weight: normal;">
                        文章
                    </div>
                    <div class="value" style="font-size: 1em!important;font-weight: bold;">
                        {{ $statistics['userinfo']->statistic->blognums }}
                    </div>
                </div>

                <div class="statistic ui popover" data-content="关注作者的用户数">
                    <div class="label" style="font-size: 1em!important;font-weight: normal;">
                        粉丝
                    </div>
                    <div class="value" style="font-size: 1em!important;font-weight: bold;">
                        {{ $statistics['userinfo']->statistic->fans }}
                    </div>
                </div>

                <div class="statistic ui popover" data-content="收到了 {{ $statistics['userinfo']->statistic->praise }} 个点赞">
                    <div class="label" style="font-size: 1em!important;font-weight: normal;">
                        喜欢
                    </div>
                    <div class="value" style="font-size: 1em!important;font-weight: bold;">
                        {{ $statistics['userinfo']->statistic->praise }}
                    </div>
                </div>

                <div class="statistic ui popover" data-content="所有文章被收藏了 {{ $statistics['userinfo']->statistic->collection }} 次">
                    <div class="label" style="font-size: 1em!important;font-weight: normal;">
                        收藏
                    </div>
                    <div class="value" style="font-size: 1em!important;font-weight: bold;">
                        {{ $statistics['userinfo']->statistic->collection }}
                    </div>
                </div>

                <div class="clearfix"></div>
            </div>
        </div>

        <div class="ui two column grid text-center" style="padding: 15px">
            <div class="column ui popover" data-content="博客总访问量排行第 1 位 ">
                排名：1
            </div>
            <div class="column ui popover" data-content="博客总访问量 {{ $statistics['userinfo']->statistic->view }}（每日更新）" style="padding-left:0px">
                访问：{{ $statistics['userinfo']->statistic->view }}
            </div>
        </div>

        <div class="extra content">

            <div class="two ui basic buttons" style="margin-top: 4px;">
                {{--<button class="ui  button small follow ui popover" data-content="关注后此博客的新文章会在首页动态里显示" data-act="unfollow" data-id="1">--}}
                {{--<i class="icon checkmark"></i> <span class="state">已关注</span>--}}
                {{--</button>--}}

                <button class="ui  button small follow ui popover active primary visible" data-content="关注后此博客的新文章会在首页动态里显示" data-act="unfollow" data-id="1">
                    <i class="icon plus"></i> <span class="state">关注</span>
                </button>

                <a href="" class="ui button small ">
                    <i class="icon envelope"></i> 私信
                </a>
            </div>
        </div>

    </div>

    <a href="{{ url('blog', [$statistics['userinfo']->username, $statistics['userinfo']->id]) }}" class="ui basic button fluid" style="background: white!important;margin-top:18px;display: none">
        <i class="icon newspaper"></i>
        Ta 的博客首页
    </a>

    @if (!empty($statistics['archive']))
    <div class="ui card tag-active-user-card popular-card responsive">
        <div class="content">
            <span class="">文章归档</span>

            <a href="{{ url('blog', [$statistics['userinfo']->username, $statistics['userinfo']->id]) }}" class="rm-link-color pull-right ui popover" style="font-size: 15px;margin-right: 8px;" data-content="所有文章">
                <i class="icon newspaper"></i>
            </a>
        </div>
        <div class="extra content ">
            <div class="ui list readmore" style="padding:8px">
                @foreach ($statistics['archive'] as $archive)
                    <a class="item" href="" style="line-height: 22px;">
                        <span class=" pull-right" style="color:inherit">{{ $archive->total }} 篇</span>
                        {{ $archive->month }}
                    </a>
                @endforeach
            </div>
        </div>
    </div>
    @endif

    <div class="ui card tag-active-user-card popular-card responsive" style="font-size: 13px;">
        <div class="ui secondary pointing menu" style="margin-bottom: 5px;border-bottom: 2px solid rgba(34, 36, 38, 0.1);">
            <a class="item active" data-tab="first">最新文章</a>
            <a class="item" data-tab="second">最受欢迎</a>
        </div>
        <div class="ui bottom attached tab active" data-tab="first">

            <div class="ui middle aligned divided  list" style="padding: 0px 15px;margin-top: 0px;margin-bottom: 5px;">
                @if (count($statistics['newblog']) > 0)
                    @foreach($statistics['newblog'] as $val)
                        <a class="item" href="{{ url('article', [$val->id, $val->user_id]) }}">
                            <span class="ui label tiny">{{ $val->created_at->diffForHumans() }} </span>
                            {{ $val->title }}
                        </a>
                    @endforeach
                @else
                    <div class="empty-blog" style="padding: 10px 0;">还木有发布文章哦</div>
                @endif
            </div>
        </div>
        <div class="ui bottom attached tab" data-tab="second">
            <div class="ui middle aligned divided  list" style="padding: 0px 15px;margin-top: 0px;">
                @if (count($statistics['niceblog']) > 0)
                    @foreach($statistics['niceblog'] as $val)
                        <a class="item" href="{{ url('article', [$val->id, $val->user_id]) }}">
                            <span class="ui label tiny"><i class="thumbs up icon"></i> {{ $val->praise }} </span>
                            {{ $val->title }}
                        </a>
                    @endforeach
                @else
                    <div class="empty-blog" style="padding: 10px 0;">还木有发布文章哦</div>
                @endif
            </div>
        </div>
    </div>

    {{-- 当前用户的博客标签 --}}
    <div class="ui card tag-active-user-card blog-tags responsive">
        <div class="content">
            <span class="">博客标签</span>
        </div>
        <div class="extra content readmore" style="    padding-bottom: 18px;">
            <a class="ui label basic" href="">
                laravel
                <div class="detail">1</div>
            </a>
        </div>
    </div>

    {{-- 文章目录索引 --}}
    <div style="margin-top:-20px" class="hide-on-mobile">
        <div class="ui toc sticky" style="padding-top: 20px; width: 280px !important; height: 216px !important;">
            <div class="ui card column author-box grid  tocify" id="toc"></div>
        </div>
    </div>

    <div class="catalog"></div>

</div>

