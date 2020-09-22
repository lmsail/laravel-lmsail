
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <meta name="csrf-token" content="<?php echo e(csrf_token(), false); ?>">
    <title><?php echo $__env->yieldContent('title'); ?> - <?php echo e(config('base.web_name'), false); ?></title>
    <meta name="keywords" content="<?php echo e(config('base.keywords'), false); ?>" />
    <meta name="description" content="<?php echo e(config('base.web_description'), false); ?>" />
    <meta name="author" content="<?php echo e(config('base.author'), false); ?>" />
    <link href="<?php echo e(asset('blog/css/blog-vendors.css'), false); ?>" rel="stylesheet">
    <link href="<?php echo e(asset('blog/css/blog-app.css'), false); ?>" rel="stylesheet">
    <link href="<?php echo e(asset('blog/css/sweet-alert.css'), false); ?>" rel="stylesheet">
    <style>
        .scrolling.menu .item:hover {
            background: #eee;
        }
    </style>
    <?php echo $__env->yieldContent('css'); ?>
</head>
<body class=" communities-tweets-page">
<div class="pusher">
    <div class="main container">
        <?php echo $__env->make('layouts.blog._header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="ui centered grid container stackable">
            <?php echo $__env->yieldContent('content'); ?>
        </div>
    </div>
    <?php echo $__env->make('layouts.blog._footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</div>

<!-- 图片放大查看 -->
<div class="img-show" id="img-show" onclick="$(this).hide()">
    <div class="img" id="img-html"></div>
</div>
</body>

<!-- Scripts -->
<script src="<?php echo e(asset('blog/js/jquery.js'), false); ?>"></script>
<script src="<?php echo e(asset('blog/js/blog-vendors.js'), false); ?>"></script>
<script src="<?php echo e(asset('blog/js/sweetalert.min.js'), false); ?>"></script>
<script src="<?php echo e(asset('blog/js/blog-app.js'), false); ?>"></script>
<script src="<?php echo e(asset('blog/js/prism.js'), false); ?>"></script>
<script src="<?php echo e(asset('blog/js/marked.js'), false); ?>"></script>
<script>
    var praisepath = "<?php echo e(url('api/praise'), false); ?>";
    $(".ui.popover").popup({ on: "hover", position: "top center" }); /* 提示 */
    $('.menu .item').tab(); /* tab切换 */
    $('.ui.dropdown').dropdown(); /* 下拉 */
    $('.ui.radio.checkbox').checkbox();
</script>
<?php echo $__env->yieldContent('js'); ?>
</html><?php /**PATH /var/www/html/blog/resources/views/layouts/blog/blog.blade.php ENDPATH**/ ?>