@extends('layouts.blog.blog')

@section('title', $details->title)

@section('css')

    <style>
        .blog.grid.container.main{display:block}
        .blog.grid.container.main .sidebar{font-size:14px;padding-right:6px}
        .ui.grid>*{padding-left:0;padding-right:0}
        .nav-list .nav-list .nav-list li{text-indent:20px!important}
        .fixed{position:fixed;top:10px}
        .rm-link-color hr{height:0;overflow:hidden;background:0 0;border:2px dashed #f0f4f6;border-bottom:0;margin:18px auto;width:50%}
        .rm-link-color p{line-height:3.4285em!important}
        .editor-preview pre,.editor-preview-active-side pre,.markdown-body pre{margin:1.5em -35px;border-radius:0;padding:1.5em 35px}
        .rm-link-color blockquote{margin-left:0!important}
        .ui .pagination{padding-left:2.2rem;background:0 0}
    </style>

@endsection

@section('content')

    <div class="ui centered grid container main stackable blog">

        <div class="twelve wide column pull-right main main-column">

            <div class="ui segment article-content">

                <div class="extra-padding" style="padding-bottom:4px">

                    @if (Session::has('success'))
                        <div class="ui green message"><i class="check circle icon"></i> {{ Session::get('success') }}</div>
                    @endif

                    <h1 style="margin-bottom: 15px;">
                        <div class="pull-left">
                            <span class="hide-on-mobile"></span>
                            <span style="line-height: 34px;">{{ $details->title }}</span>
                        </div>
                        <div class="clearfix"></div>
                    </h1>
                    <p class="book-article-meta" style="margin-bottom: 10px;">

                        <a class="ui popover" href="javascript:" title="发布于 Laravel 社区">
                            <img class="ui image display-inline-block" style="width:18px;height:18px;margin-top:-2px;" src="https://iocaffcdn.phphub.org//uploads/communities/WtC3cPLHzMbKRSZnagU9.png"> Laravel
                        </a>
                        <span class="divider">/</span>
                        <a class="" data-inverted="" data-tooltip="{{ $details->created_at }}">
                            <i class="icon time"></i>  <span title="{{ $details->created_at }}">{{ $details->created_at->diffForHumans() }}</span>
                        </a>
                        <span class="divider">/</span>
                        <span class="text-mute">
                            <i class="icon eye open"></i> {{ $details->view }}
                        </span>
                        <span class="divider">/</span>
                        <span class="text-mute">
                            <i class="icon comments outline"></i> {{ $details->comment }}
                        </span>

                        @if(strtotime($details->updated_at) > strtotime($details->created_at))
                        <span class="divider">/</span>
                        <a class="javascript:;" data-inverted="" data-tooltip="{{ $details->updated_at }}">
                            <span title="{{ $details->updated_at }}">更新于 {{ $details->updated_at->diffForHumans() }}</span>
                        </a>
                        @endif
                    </p>
                    <div class="ui divider"></div>

                    <div class="ui readme markdown-body content-body article-content fluidbox-content">
                        {!! analysis_face($details->content) !!}
                    </div>

                    @if(!empty($details->tags))
                        <div class="meta" style="margin: 35px 0px;">
                            <i class="icon tags"></i>
                            @if(!empty($details->tags))
                                @foreach($details->tags as $v) <a class="ui label small yellow topic-tag" href="">{{ $v }}</a> @endforeach
                            @endif
                        </div>
                    @endif

                    <div>
                        <a class="ui popover" data-content="作者署名，你可以在『个人资料』里设置" target="_blank" style="display: block;width: 30px;color: #ccc;margin: 22px 0 8px;"><i class="icon paw" aria-hidden="true"></i></a>
                        @if($statistics['userinfo']->autograph)
                            <span class="rm-link-color"><hr>
                                <p>{!! analysis_face($statistics['userinfo']->autograph) !!}</p>
                            </span>
                        @endif
                    </div>

                    <div class="admin-operation" style="line-height: 32px;">
                        本帖由系统于 {{ $details->created_at->diffForHumans() }} 自动加精
                    </div>

                    <div class="ui horizontal list topic-operations" style="margin-bottom: 0px;margin-top:10px">

                        <a class="popover item ui topic-vote" title="点赞" data-id="{{ $details->id }}" data-uid="{{ $details->user_id }}" data-type="2" href="javascript:;">
                            <div class="top aligned content">
                                <i class="icon thumbs up outline"></i> 点赞 <span class="vote-count">{{ $details->praise }}</span>
                            </div>
                        </a>

                        <a class="item ui popover report-modal" href="javascript:$('.ui.modal').modal('show');" data-content="举报违规内容，共建品质社区">
                            <div class="top aligned content">
                                <i class="icon flag outline"></i> 举报
                            </div>
                        </a>

                        @if ($details->user_id == Auth::id())
                            <a class="item attend-topic" href="{{ url('blogedit', [$details->id])}}">
                                <div class="top aligned content">
                                    <i class="edit icon fs-large "></i> <span class="state">编辑</span>
                                </div>
                            </a>

                            @if(config('blog.delete') == 1)
                            <a class="item attend-topic" href="javascript:blogdelete(this, {{ $details->id }});">
                                <div class="top aligned content">
                                    <i class="trash alternate outline icon"></i> <span class="state">删除</span>
                                </div>
                            </a>
                            @endif
                        @endif
                    </div>
                </div>
            </div>

            <div class="ui message basic text-center voted-box pt-2">
                <div class="pt-0">
                    <div class="ui small horizontal list topic-voted-users" style="font-size:16px;padding-top: 8px;display: flex;">
                        <div class="item" style="font-size: 15px;margin-right: 12px;font-size: 15px;margin-right: 12px;display: inline-flex;flex-shrink: 0;line-height: 26px;">
                            <a class="item ui topic-vote ui action  rm-link-color text-mute rm-tdu"href="javascript:;" title="Vote Up">
                                <i class="icon thumbs up outline fs-huge"></i> <span class="count vote-count">{{ $details->praise }}</span> 人点赞
                            </a>
                        </div>
                        <div class="users" style="display: inline-flex;-webkit-box-flex: 1;-webkit-box-flex: 1;-ms-flex-positive: 1;flex-grow: 1;-ms-flex-wrap: wrap;flex-wrap: wrap;overflow: hidden;height: 42px;">
                            @foreach($praise as $zan)
                            <a class="item ui popover" data-content="{{ $zan->nickname }}" style="margin-left: 2px;" href="{{ url('blog', [$zan->username, $zan->user_id]) }}">
                                <img class="ui image avatar translator" src="{{ $zan->avatar ? $zan->avatar : asset('blog/picture/laravel.png') }}" style="width: 34px;height: 34px;">
                            </a>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>

            <div id="replies" name="replies"></div>

            @include('blog.article._article_comment')
        </div>

        <div class="four wide column pull-left sidebar" style="padding-right: 0px;">
            @include('blog.article._article_user')
        </div>

        <div class="clearfix"></div>
    </div>
@endsection

@section('js')
    <script>var face_path = "{{ env('APP_URL') }}", dynamic_path = "{{ url('sendDynamic') }}", delpath = "{{ url('deldynamic') }}", replypraisepath = "{{ url('api/replypraise') }}";</script>
    <script src="{{ asset('blog/js/paste-upload-image.js') }}"></script>
    <script>
        articleIndex(); /* 生成目录索引 */
        makeExpandingArea(document.getElementById('comment-composing-box'));
        // 图片拖拽上传
        $("#comment-composing-box").pasteUploadImage("{{ url('api/upload') }}");
        $('.ui.feed').find("p>img").not(".emoji").click(function() {
            var imgsrc = $(this).attr("src");
            $("#img-show").fadeIn().find("#img-html").html("<img src='"+imgsrc+"'>");
        });

        function blogdelete(obj, id) {
            var _this = $(obj);
            swal({
                title : "Are you sure?",
                text : "确定要删除吗？",
                type : "warning",
                showCancelButton : true,
                confirmButtonColor : '#DD6B55',
                confirmButtonText : '确认',
                cancelButtonText : "取消",
            }, function(isConfirm) {
                if (isConfirm) {
                    _this.find("i").attr("class", "spinner loading icon");
                    sailAjax("{{ url('api/blogdel') }}", {id: id}, function(ret) {
                        _this.find("i").attr("class", "trash alternate outline icon");
                        if(ret.code == 200) {
                            swal({
                                title : "删除成功！",
                                text : ret.msg,
                                type : "success",
                                confirmButtonColor : '#DD6B55',
                            }, function() {
                                window.location.href = "{{ url('list') }}";
                            });
                        } else {
                            swal("删除失败！", ret.msg, "error");
                        }
                    });
                }
            });
        }

        @if (Session::has('to') || count($errors) || !empty($page))
            $('html,body').animate({scrollTop: ($(".comment-composing-box").offset().top - 50 )}, 300);
        @endif
    </script>
@endsection