@extends('layouts.blog.blog')

@section('title', '发布博文')

@section('css')
    <link rel="stylesheet" href="{{ asset('blog/simplemde/simplemde.min.css') }}">
    <link rel="stylesheet" href="{{ asset('blog/tag/tagsinput.css') }}">
@endsection

@section('content')

    <div class="fourteen wide column">
        <div class="ui segment">

            <a class="ui right corner label compose-help" href="javascript:;">
                <i class="info icon"></i>
            </a>

            <div class="content extra-padding">

                <div class="ui header text-center text gery" style="margin:10px 0 40px">
                    <i class="icon paint brush"></i> 新建博文
                </div>

                <!-- 发布结果提示信息 S -->
                @if (Session::has('error'))
                    <div class="ui red message"><i class="exclamation circle icon"></i> {{ Session::get('error') }}</div>
                @endif
                <!-- 发布结果提示信息 S -->

                <!-- 表单错误提示信息 S -->
                @if($errors->has('title'))
                    <div class="ui red message">{{$errors->first('title')}}</div>
                @endif

                @if($errors->has('content'))
                    <div class="ui red message">{{$errors->first('content')}}</div>
                @endif
                <!-- 表单错误提示信息 E -->

                <form method="POST" action="{{ url('release') }}" id="blogform" class="ui form" style="min-height: 49px;">

                    @csrf

                    <div class="field">
                        <input class="form-control" type="text" name="title" id="title-field" value="{{ old('title') }}" placeholder="标题" required="">
                    </div>

                    <div class="field">
                        <label>选择标签（Tab 键可创建新标签）</label>
                        <div class="ui search multiple selection tags dropdown empty">
                            <input name="tags" id="tagsinputval" class="tagsinput" data-role="tagsinput" value="{{ old('tags') }}" placeholder="请选择标签（选填）" />
                        </div>
                    </div>

                    <div class="field">
                        <textarea rows="15" id="body-field" name="content" placeholder="请使用 Markdown 编写" required></textarea>
                    </div>

                    <div class="ui segment" style="padding: 1em;">
                        <div class="inline fields mb-0" id="checkbox">
                            <label>同步到社区</label>
                            <div class="field">
                                <div class="ui radio checkbox">
                                    <input type="radio" name="community_id" tabindex="0" class="hidden" checked value="0">
                                    <label>不同步</label>
                                </div>
                            </div>
                            <div class="field">
                                <div class="ui radio checkbox">
                                    <input type="radio" name="community_id" tabindex="0" class="hidden" value="1">
                                    <label>
                                        <img class="ui image display-inline-block" style="width:18px;height:18px;margin-top:-2px;" src="https://iocaffcdn.phphub.org//uploads/communities/WtC3cPLHzMbKRSZnagU9.png">
                                        Laravel
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="text-mute fs-small mt-3">
                            <i class="info icon"></i> 同步到社区将提高文章的曝光量
                        </div>
                    </div>

                    <div class="ui message">
                        <button type="button" class="ui button primary publish-btn loading-on-clicked" id="send_blog">
                            <i class="icon send"></i>
                            发布文章
                        </button>&nbsp;&nbsp;or&nbsp;&nbsp;
                        <button class="ui button" type="button" id="savedraft" name="subject" value="draft">
                            <i class="icon save"></i> 保存草稿
                        </button>

                        <a class="pull-right" href="https://learnku.com/docs/writing-docs/editor-guide/3958" target="_blank" style="color: #777;font-size: .9em;text-decoration: underline;margin-top: 8px;">
                            <i class="icon wpforms"></i> 编辑器使用指南
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection

@section('js')
    <script src="{{ asset('blog/simplemde/simplemde.min.js') }}"></script>
    <script src="{{ asset('blog/tag/tagsinput.js') }}"></script>
    <script src="{{ asset('InlineAttachment/inline-attachment.min.js') }}"></script>
    <script src="{{ asset('InlineAttachment/codemirror-4.inline-attachment.min.js') }}"></script>
    <script>
        /* 结合simplemde实现图片上传 */
        var inlineAttachmentConfig = {
            uploadUrl: "{{ url('api/upload') }}",
            extraParams: {
                '_token': $('meta[name="csrf-token"]').attr('content')
            }
        };
        var simplemde = new SimpleMDE({
            element: document.getElementById("body-field"),
            toolbar: ["bold", "italic", "heading", "|", "quote", "code", "table", "horizontal-rule", "unordered-list", "ordered-list", "|", "link", "image", "|", "side-by-side", "fullscreen", "|", {
                name: "circle",
                action: function circlefunction() {
                    window.open("https://learnku.com/docs/writing-docs/editor-guide/3958" ,"_blank");
                },
                className: "fa fa-info-circle",
                title: "Markdown高效编写指南",
            }],
        });
        inlineAttachment.editors.codemirror4.attach(simplemde.codemirror, inlineAttachmentConfig);

        @if (old('content'))
            simplemde.value("{{ old('content') }}");
        @endif

        @if (Session::has('success'))
            localStorage.setItem('title', "");
            localStorage.setItem('content', "");
            localStorage.setItem('tags', "");
        @endif

        $(function() {
            // 自动填充博客表单
            $("#title-field").val(localStorage.getItem('title'));
            if(!chkStrIsNull(localStorage.getItem('content'))) {
                simplemde.value(localStorage.getItem('content'));
            }
            var tags = localStorage.getItem('tags');
            if(!chkStrIsNull(tags)) {
                $("#tagsinputval").val(tags)
                if(tags.indexOf(',') >= 0) {
                    tags = tags.split(',');
                    for (var i = 0; i < tags.length; i++) {
                        $(".bootstrap-tagsinput").prepend('<span onclick="$(this).remove()" class="badge badge badge-info">'+ tags[i] +'&nbsp;<i class="delete icon"></i><span data-role="remove"></span></span>');
                    }
                } else {
                    $(".bootstrap-tagsinput").prepend('<span onclick="$(this).remove()" class="badge badge badge-info">'+ tags +'&nbsp;<i class="delete icon"></i><span data-role="remove"></span></span>')
                }
            }
            $("#send_blog").on("click", function() {
                $("#blog-form").addClass("loading");
                // 表单验证
                var title = $("#title-field").val();
                var content = simplemde.value();

                if(title == "") {
                    swal("标题为空！", "请填写文章标题！", "error");
                    return false;
                }
                if(content == "") {
                    swal("内容为空！", "请填写文章内容！", "error");
                    return false;
                }
                $("#blogform").submit();
            });
            $("#savedraft").on("click", function() {
                if(chkStrIsNull($("#title-field").val()) && chkStrIsNull(simplemde.value()) && chkStrIsNull($("#tagsinputval").val())) {
                    swal("保存失败！", "标题，博客内容，标签三者不能全空！", "error");return;
                }
                localStorage.setItem('title', $("#title-field").val());
                localStorage.setItem('content', simplemde.value());
                localStorage.setItem('tags', $("#tagsinputval").val());
                swal("保存成功！", "下次进入可继续编辑！", "success");
            })
        })
    </script>
@endsection