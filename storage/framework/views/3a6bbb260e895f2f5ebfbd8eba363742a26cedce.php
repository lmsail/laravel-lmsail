<!DOCTYPE html>
<html lang="<?php echo e(config('app.locale'), false); ?>">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo e(Admin::title(), false); ?> <?php if($header): ?> | <?php echo e($header, false); ?><?php endif; ?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

    <?php echo Admin::css(); ?>


    <script src="<?php echo e(Admin::jQuery(), false); ?>"></script>
    <?php echo Admin::headerJs(); ?>

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body class="hold-transition <?php echo e(config('admin.skin'), false); ?> <?php echo e(join(' ', config('admin.layout')), false); ?>">
<div class="wrapper">

    <?php echo $__env->make('admin::partials.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <?php echo $__env->make('admin::partials.sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <div class="content-wrapper" id="pjax-container">
        <div id="app">
        <?php echo $__env->yieldContent('content'); ?>
        </div>
        <?php echo Admin::script(); ?>

    </div>

    <?php echo $__env->make('admin::partials.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

</div>

<script>
    function LA() {}
    LA.token = "<?php echo e(csrf_token(), false); ?>";
</script>

<!-- REQUIRED JS SCRIPTS -->
<?php echo Admin::js(); ?>


</body>
</html>
<?php /**PATH /www/wwwroot/www.lmsail.com/vendor/encore/laravel-admin/src/../resources/views/index.blade.php ENDPATH**/ ?>