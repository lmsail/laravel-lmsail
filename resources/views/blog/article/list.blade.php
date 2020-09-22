@extends('layouts.blog.blog')

@section('title', '博文列表')

@section('css')
    <style>
        .blog.grid.container.main {
            display: block;
        }
        .ui.menu {
            -webkit-box-shadow: 0 0 0 #fff;
            box-shadow: 0 0 0 #fff;
        }
        .ui.pagination.menu {
            margin: 20px 0 30px 0;
        }
        .ui.grid>* {
            padding-left: 0;
            padding-right: 0;
        }
        .title {
            font-size: 18px!important;
        }
        .ui.grid>.column:not(.row) {
            padding-top: 0;
        }
        .tags a {
            font-weight: 400!important;
            color: #887230!important;
            padding: 5px!important;
            background-color: #ffefc6!important;
        }
        .extra-padding {
            padding: 0 20px
        }
    </style>
@endsection

@section('content')

    <div class="four wide column remove">

        <div class="ui large vertical fluid pointing menu" style="margin-top: -0.35rem">
            <div class="header my-2 py-1 pt-3">
                <h2 class="fs-normal pl-3 text-mute">博客分类：</h2>
            </div>

            <a class="item @if(!$request->cateid) active @endif" href="{{ url('list') }}">
                <i class="envira icon"></i> 所有博文
            </a>
            
            @foreach ($categories as $val)
            <a class="item @if($request->cateid == $val->id) active @endif" href="{{ route('list', ['cateid' => $val->id]) }}">
                <div class="ui small label">{{ $val->post_count }}</div>
                <img class="ui image display-inline-block mr-3" style="width:16px;height:16px;margin-top:-3px" src="{{ $val->logo ? '/uploads/' . $val->logo : asset('blog/picture/laravel.png') }}">
                {{ $val->name }}
            </a>
            @endforeach
        </div>

        {{-- 标签列表 --}}
         <div class="ui large vertical fluid pointing menu">
            <div class="header my-2 py-1 pt-3">
                <h2 class="fs-normal pl-3 text-mute">标签云</h2>
            </div>
            <div class="tags p-3" style="margin: -2px 0px 0px;margin-bottom: -8px;">
                @foreach($tags as $val)
                <a class="ui label small mb-2" href="{{ url('search') }}?q={{ $val }}" style="margin-left: 0px !important;">{{ $val }}</a>
                @endforeach
            </div>
        </div>
    </div>

    <div class="twelve wide column">

        <div class="ui segment article-content">
            <div class="extra-padding" style="padding-bottom:4px">
                <h1>
                    <i class="icon newspaper"></i> 博文列表
                    <div class="ui secondary menu pull-right small" style="margin-top: -4px;">
                        <div class="ui item" style="font-size:13px;padding: 0px 4px;color: #777;">
                            文章排序：
                        </div>
                        <a class="ui item {{ in_array($request->type, ['', 'updated_at']) ? 'active' : '' }} popover" data-content="按照时间排序" href="?type=updated_at" role="button">时间</a>
                        <a class="ui item {{ $request->type == 'praise' ? 'active' : '' }}  popover" data-content="按照点赞排序" href="?type=praise" role="button">点赞</a>
                    </div>
                </h1>

                <div class="ui divider"></div>

                <div class="ui feed blog-article-list rm-link-color">

                    @if(count($data) > 0)
                        @foreach ($data as $key => $val)
                            <div class="event">
                                <div class="content">
                                    <div class="summary">
                                        <a href="{{ url('article', [$val->id, $val->user_id]) }}" class="title"> {{ $val->title }} </a>
                                    </div>

                                    <div class="meta" style="line-height: 34px;">
                                        <div class="tags" style="    margin: -2px 0px 0px;margin-bottom: -8px;">
                                            @if (!empty($val->tags))
                                                @foreach($val->tags as $tag)
                                                    <a class="ui label small" href="" style="margin-left: 0px !important;">{{ $tag }}</a>
                                                @endforeach
                                            @endif
                                        </div>

                                        <div class="date" style="font-size: 13px;margin: 7px 0em 0em;margin-left:0px">
                                            @if($val->category)
                                            <a class="item" href="javascript:;">
                                                <img class="ui image display-inline-block mr-1" style="width:16px;height:16px;margin-top:-3px" src="{{ $val->category->logo ? '/uploads/' . $val->category->logo : asset('blog/picture/laravel.png') }}">
                                                {{ $val->category->name ? $val->category->name : '其他' }}
                                            </a>
                                            @endif

                                            <span class="divider">|</span>

                                            <a class="" data-tooltip="{{ $val->created_at }}">创建于  <span title="">{{ $val->created_at->diffForHumans() }}</span></a>

                                            <span class="divider">|</span>

                                            @if(!empty($val->updated_at))
                                            <a class="" data-tooltip="{{ $val->created_at }}">更新于  <span title="">{{ $val->updated_at->diffForHumans() }}</span></a>
                                            <span class="divider">|</span>
                                            @endif
                                            
                                            <a href="javascript:;">阅读数 {{ $val->view }}</a>

                                            <span class="divider">|</span>

                                            <a href="javascript:;">评论数 {{ $val->comment }}</a>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="item-meta">
                                    <a class="ui label basic light grey topic-vote ui" data-id="{{ $val->id }}" data-uid="{{ $val->user_id }}" data-type="2" href="javascript:;"><i class="thumbs up icon outline"></i> <span class="vote-count">{{ $val->praise }}</span> </a>
                                    <a class="ui label basic light grey" href="{{ url('article', [$val->id, $val->user_id]) }}"><i class="comment icon"></i> {{ $val->comment }} </a>
                                </div>
                            </div>
                        @endforeach
                    @else
                        <div class="text-center mb-3"><i class="meh outline icon"></i> 该分类还木有发表任何文章哦！</div>
                    @endif
                </div>

                @if($data->lastPage() > 1)
                    <div class="ui pagination menu stackable">
                        {{ $data->links() }}
                    </div>
                @endif

            </div>
        </div>

    </div>

    <div class="clearfix"></div>

@endsection

@section('js')

@endsection