@extends('layouts.blog.blog')

@section('title', 'LmSail 社区专栏文章列表')

@section('css')
    <style>
        a.title {
            font-size: 20px!important;
            color: #000;
            margin-bottom: 10px
        }
    </style>
@endsection

@section('content')

    <div class="ui centered grid container main" style="min-height: 500px;">
        <div class="sixteen wide column">

            <div class="ui segment">
                <h1 style="margin: 22px">
                    <i class="grey wikipedia text outline icon" style="font-size: 1.4em;"></i> {{ $specialInfo->name }}
                </h1>

                <div class="ui message " style="margin: 22px;">
                    <p class="lh-3">
                        {{ $specialInfo->description }}
                    </p>
                    <ul>
                        <li class="lh-4">收录《{{ $specialInfo->name }}》相关文章，便于查看！</li>
                        <li class="lh-4">
                            <div class="extra">
                                <span style="font-weight:bold;font-size: 13px;margin-top: 18px;display: block;color: #5a5a5a;">
                                    专栏作者：
                                    <a href="">
                                        <img class="ui image avatar translator" src="http://www.blog.com/storage/8e364369943859b34c4539a4da69f9d6.jpeg"> 
                                        Mr.bo
                                    </a>
                                </span>
                            </div>
                        </li>
                    </ul>
                </div>

                <div class="pl-4 pr-4">
                    <div class="ui attached tabular menu" id="topics">
                        <a class="item active" href="">
                            <i class="grey content icon"></i>
                            文章列表
                        </a>
                    </div>

                    <div class="ui secondary menu" style="margin-bottom:40px;display: none">
                        <a class="item active" href="">活跃</a>
                        <a class="item " href="">精华</a>
                        <a class="item " href="">投票</a>
                        <a class="item " href="">最近</a>
                    </div>
        
                    <div class="ui divided feed">
                        
                        @if($list->total() == 0)
                            <div class="text-center mt-lg-5 mb-lg-5">该专栏下暂未发表任何博文！！</div>
                        @endif

                        @foreach($list as $val)
                            <div class="event">
                                <div class="label">
                                    <a href="">
                                        <img src="{{ $val->user->avatar ? $val->user->avatar : asset('blog/picture/laravel.png') }}">
                                    </a>
                                </div>
                                <div class="content">
                                    <div class="date">
                                        <a href="{{ url('blog', [$val->user->username, $val->user->user_id]) }}">{{ $val->user->nickname }}</a>
                                        在 <span title="{{ $val->created_at }}">{{ $val->created_at->diffForHumans() }}</span>
                                        发布了
                                    </div>
        
                                    <div class="summary">
                                        <a href="{{ url('article', [$val->id, $val->user_id]) }}" class="title">{{ $val->title }}</a>
                                    </div>
                                    
                                    <!--<div class="desc">{{ $val->content }}</div>-->
        
                                    <div class="topics-meta meta">
                                        <i class="thumbs up icon" style="font-size:1.2em"></i> {{ $val->praise }} 个点赞 | <i class="talk icon"></i>  {{ $val->comment }} 个回复
                                    </div>
                                </div>
                            </div>
                        @endforeach

                        <div class="ui pagination menu stackable">
                            {{ $list->links() }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection