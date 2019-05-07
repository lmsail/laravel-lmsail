@extends('layouts.blog.blog')

@section('title', '社区用户列表')

@section('css')
    <style>
        .ui.grid>* {
            padding-left: 0;
            padding-right: 0;
        }
        .column {
            text-align: center;
        }
        .column .wrap {
            height: auto;
            margin-top: 50px;
            padding: 0 20px;
            border: 1px solid #e6e6e6;
            border-radius: 4px;
            background-color: #fff;
            transition: .2s ease;
            -webkit-transition: .2s ease;
            -moz-transition: .2s ease;
            -o-transition: .2s ease;
            -ms-transition: .2s ease;
        }
        .column .wrap a {
            color: #333;
        }
        .column .wrap a:hover {
            color: #f4645f;
        }
        .column .wrap:hover {
            cursor: pointer;
            box-shadow: 0 5px 20px rgba(0,0,0,.1);
        }
        .column .wrap .avatar {
            width: 80px;
            height: 80px;
            cursor: pointer;
            -webkit-border-radius: 100%;
            -moz-border-radius: 100%;
            border-radius: 100%;
            margin: -40px 0 10px;
            display: inline-block;
            border: 1px solid #ddd;
            padding: 2px;
            background-color: #fff;
        }
        h4.name {
            color: #000;
            font-size: 21px;
            font-weight: 700;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            margin-top: 0;
        }
        .description {
            margin: 0 auto 10px;
            max-width: 180px;
            min-height: 50px;
            font-size: 13px;
            line-height: 25px;
        }
        .wrap hr {
            border-color: #eaeaea;
            margin-top: 20px;
            margin-bottom: 20px;
            border: 0;
            border-top: 1px solid #eee;
            box-sizing: content-box;
            height: 0;
        }
        .wrap .meta {
            float: left;
            margin-top: -29px;
            padding-right: 10px;
            font-size: 12px;
            color: #969696;
            background-color: #f8f8f8;
        }
        .wrap .recent-update {
            min-height: 75px;
        }
        .wrap .new {
            font-size: 13px;
            line-height: 25px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            display: block;
        }
        .ui.grid>.column:not(.row) {
            padding-top: 0rem;
        }
        .ui.segment, .ui.menu {
            border: none;
            background: transparent;
            box-shadow: 0 0 0 #fff;
        }
    </style>
@endsection

@section('content')

    <div class="twelve column">
        <div class="ui segment article-content">
            <div class="ui four column stackable middle grid pb-4">
                @foreach ($list as $val)
                <div class="column">
                    <div class="wrap">
                        <img class="avatar" src="{{ $val->avatar ? $val->avatar : asset('blog/picture/laravel.png') }}" alt="{{ $val->username }}">
                        <h4 class="name">
                            {{ $val->nickname }}
                            @if($val->special == 1) <i data-content="社区 `创建者` 与 `贡献者` 特殊标识" class="ui popover vimeo square icon" style="color: #FFB800;"></i> @endif
                        </h4>
                        <p class="description">{{ $val->introduction ? $val->introduction : '这个用户好懒，啥都木有留下~' }}</p>

                        <div class="ui buttons mt-1 mb-2">
                            <button class="ui button"><i class="plus icon"></i>关注</button>
                            <div class="or"></div>
                            <a href="{{ url('blog', [$val->username, $val->id]) }}" class="ui positive button"><i class="leaf icon"></i>博客</a>
                        </div>

                        <hr>
                        <div class="meta">最近更新</div>
                        <div class="recent-update mb-2">
                            @if(count($val->blog))
                                @foreach ($val->blog as $blog)
                                    <a class="new" target="_blank" href="{{ url('article', [$blog->id, $blog->user_id]) }}">{{ $blog->title }}</a>
                                @endforeach
                            @else
                                <div class="empty">空空如也</div>
                            @endif
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
            <div class="ui pagination menu stackable">
                {{ $list->links() }}
            </div>
        </div>
    </div>

@endsection

@section('js')

@endsection