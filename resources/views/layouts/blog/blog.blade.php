
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>@yield('title') - {{ config('base.web_name') }}</title>
    <meta name="keywords" content="{{ config('base.keywords') }}" />
    <meta name="description" content="{{ config('base.web_description') }}" />
    <meta name="author" content="{{ config('base.author') }}" />
    <link href="{{ asset('blog/css/blog-vendors.css') }}" rel="stylesheet">
    <link href="{{ asset('blog/css/blog-app.css') }}" rel="stylesheet">
    <link href="{{ asset('blog/css/sweet-alert.css') }}" rel="stylesheet">
    <style>
        .scrolling.menu .item:hover {
            background: #eee;
        }
    </style>
    @yield('css') 
</head>
<body class=" communities-tweets-page">
<div class="pusher">
    <div class="main container">
        @include('layouts.blog._header')
        <div class="ui centered grid container stackable">
            @yield('content')
        </div>
    </div>
    @include('layouts.blog._footer')
</div>

<!-- 图片放大查看 -->
<div class="img-show" id="img-show" onclick="$(this).hide()">
    <div class="img" id="img-html"></div>
</div>
</body>

<!-- Scripts -->
<script src="{{ asset('blog/js/jquery.js') }}"></script>
<script src="{{ asset('blog/js/blog-vendors.js') }}"></script>
<script src="{{ asset('blog/js/sweetalert.min.js') }}"></script>
<script src="{{ asset('blog/js/blog-app.js') }}"></script>
<script src="{{ asset('blog/js/prism.js') }}"></script>
<script src="{{ asset('blog/js/marked.js') }}"></script>
<script>
    var praisepath = "{{ url('api/praise') }}";
    $(".ui.popover").popup({ on: "hover", position: "top center" }); /* 提示 */
    $('.menu .item').tab(); /* tab切换 */
    $('.ui.dropdown').dropdown(); /* 下拉 */
    $('.ui.radio.checkbox').checkbox();
</script>
@yield('js')
</html>