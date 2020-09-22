<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=yes">
    <link href="/favicon.ico" rel="shortcut icon" />
    <title><?php echo e(config('lmsail.head.title'), false); ?></title>
    <link rel="stylesheet" href="<?php echo e(asset('blog/login/css/qietu.css'), false); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('blog/login/css/style.css'), false); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('blog/login/css/style_tr.css'), false); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('blog/login/css/login.css'), false); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('blog/login/css/responsive.css'), false); ?>">
    <style>
        body {
            background: url("<?php echo e(asset('blog/login/images/js-index-banner_1.jpg'), false); ?>") no-repeat;
            -webkit-background-size: 100% 100%;
            background-size: 100% 100%;
            height: 100vh;
        }
        .login2, .banner,.copyright {
            background: none;
        }
        .banner {
            height: 200px;
        }
        .text-danger {
            color: red;
        }
    </style>
</head>
<body>
<!--头部-->
<div class="header bj-3d7bf8">
    <div class="wrapper">
        <div class="logo">
            <a href="/" style="font-size: 30px;">
                <img src="<?php echo e(asset('blog/login/images/logo.png'), false); ?>" style="width: 70px;" alt=""> <?php echo e(config('lmsail.web_name'), false); ?>

            </a>
        </div>
    </div>
</div>
<!--内容-->
<div class="banner">
    <div class="wrapper">
        <h2 class="wow" style="letter-spacing: 3px"><?php echo e(__('Personal Login'), false); ?></h2>
        <p class="wow" data-wow-delay='.5s'>- Personal Login -</p>
    </div>
</div>
<div class="login2">
    <div class="login-wp">
        <div class="login-hd">
            <h2>欢迎登录</h2>
        </div>
        <div class="login-bd">
            <form name="defaultForm" method="post" action="<?php echo e(route('login'), false); ?>">
                <?php echo csrf_field(); ?>
                <div class="account-main c-center">
                    <div>
                        <div class="account-input-cont c-relative">
                            <input required type="text" name="username" placeholder="账号" autocomplete="off" class="account-input">
                            <div class="c-input-checked-icon c-hide login-email-checked" style="display: block;"></div>
                        </div>
                        <div class="account-tip-cont" style="display: none;">
                            <div class="c-error-icon c-hide" style="display: none;"></div>
                            <div class="c-tip-text">请输入您的账号</div>
                        </div>
                    </div>
                    <div>
                        <div class="account-input-cont c-relative">
                            <input required type="password" name="password" placeholder="密码" autocomplete="off" class="account-input">
                            <div class="c-input-checked-icon c-hide login-password-checked"></div>
                        </div>
                    </div>
                    <?php if($errors->has('username')): ?>
                        <div class="col-md-12">
                            <p class="text-danger text-left"><strong><?php echo e($errors->first('username'), false); ?></strong></p>
                        </div>
                    <?php endif; ?>
                    <div class="col-md-12">
                        <div class="account-input-cont" style="position: relative;">
                            <input required type="text" name="captcha" placeholder="验证码" autocomplete="off" class="account-input">
                            <div class="c-input-checked-icon c-hide login-password-checked"></div>
                            <img src="<?php echo e(captcha_src(), false); ?>" onclick="this.src='<?php echo e(captcha_src(), false); ?>'+Math.random()">
                        </div>
                    </div>
                    <?php if($errors->has('captcha')): ?>
                        <div class="col-md-12">
                            <p class="text-danger text-left"><strong><?php echo e($errors->first('captcha'), false); ?></strong></p>
                        </div>
                    <?php endif; ?>
                    <div>
                        <div style="margin-top: 20px;margin-bottom: 10px;"></div>
                        <div class="account-tip-cont c-hide">
                            <div class="c-error-icon hide"></div>
                            <div class="c-tip-text c-error-text"></div>
                        </div>
                    </div>
                </div>
                <div class="gtpwd">
                    <div class="gtpwd-l">
                        <label>
                            <input type="checkbox" class="checkbox1" name="remember" id="remember" checked />
                            <label for="remember"></label>记住账户
                        </label>
                    </div>
                    <div class="gtpwd-r">
                        <a href="javascript:;">忘记密码？</a>
                    </div>
                </div>
                <div class="login-btn">
                    <input type="submit" class="btn account-login-btn" value="登录" />
                </div>
            </form>
        </div>
    </div>
</div>
<!--底部-->
<div class="copyright">
    <div class="wrapper">
        <?php echo e(config('lmsail.foot.copyleft_word'), false); ?> <a href="#" style="color: #fff;"><?php echo e(config('lmsail.web_name'), false); ?></a> · <?php echo e(config('lmsail.foot.copyright_word'), false); ?>

    </div>
</div>
</body>
</html>
<?php /**PATH /www/wwwroot/www.lmsail.com/resources/views/auth/login.blade.php ENDPATH**/ ?>