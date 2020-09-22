@extends('layouts.blog.blog')

@section('title', 'LmSail 社区专栏')

@section('css')
    <style>
        .blog.grid.container.main {
            display: block;
        }

        .blog.grid.container.main .sidebar {
            font-size: 14px;
            padding-right:6px;
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
    </style>
@endsection

@section('content')

    <div class="ui centered grid container main stackable blog" style="min-height: 500px;">
        <div class="sixteen wide column docs-main-content">

            <div class="ui header text-center" style="font-size: 26px;font-weight: bold;margin-top: 26px;margin-bottom: 36px;">
                LmSail社区专栏
                <!--<a href="" target="_blank" class="ui button tiny mt-2 pull-right">-->
                <!--    <i class="icon plus"></i>创建专栏-->
                <!--</a>-->
            </div>
            <div class="ui three column grid stackable">
                
                @foreach ($list as $val)
                <div class="column">
                    <div class="ui fluid card stackable">
                        <a class="image" href="{{ url('specialist', ['id' => $val->id]) }}">
                            <img src="{{ $val->logo ? '/uploads/' . $val->logo : asset('blog/picture/laravel.png') }}" style="height: 230px">
                        </a>
                        <div class="content">
                            <a class="header" href="{{ url('specialist', ['id' => $val->id]) }}">{{ $val->name }}</a>
                            <div class="meta">
                                <i class="user secret icon"></i>
                                记录者/作者：Mr.bo
                            </div>
                            <div class="meta">
                                <i class="icon flag"></i>
                                共发表文章：<b>{{ $val->post_count }}</b> 篇
                            </div>
                        </div>

                        <div class="extra content">{{ $val->description }}</div>
                    </div>
                </div>
                @endforeach 

             </div>
    
        </div>
        <div class="clearfix"></div>
    </div>

@endsection

@section('js')

@endsection