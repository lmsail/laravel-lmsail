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
            /*min-height: 50px;*/
            font-size: 13px;
            line-height: 25px;
        }
        .new {
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

    <div class="ui grid container centered text-center books-page stackable cheatsheet pb-3">
        <div class="ui four stackable cards mt-2" style="width:100%">
            @foreach ($list as $val)
            <div class="card">

                <a class="image" href="{{ url('blog', [$val->username, $val->id]) }}">
                    <img src="{{ $val->avatar ? $val->avatar : asset('blog/picture/laravel.png') }}">
                </a>

                <h2 class="my-3 mx-2 fw-bold rm-link-color">
                    <a href="{{ url('blog', [$val->username, $val->id]) }}">
                        {{ $val->nickname }}
                        @if($val->special == 1) <i data-content="社区 `创建者` 与 `贡献者` 特殊标识" class="ui popover vimeo square icon" style="color: #FFB800;"></i> @endif
                    </a>
                </h2>

                <p class="description">{{ $val->introduction ? $val->introduction : '这个用户好懒，啥都木有留下~' }}</p>

                <div class="extra content">
                    @if(count($val->blog))
                        @foreach ($val->blog as $blog)
                            <div><a class="new" target="_blank" href="{{ url('article', [$blog->id, $blog->user_id]) }}">{{ $blog->title }}</a></div>
                        @endforeach
                    @else
                        <div class="empty">空空如也</div>
                    @endif
                </div>
            </div>
            @endforeach
        </div>

        <div class="ui pagination menu stackable">
            {{ $list->links() }}
        </div>
    </div>
@endsection

@section('js')

@endsection