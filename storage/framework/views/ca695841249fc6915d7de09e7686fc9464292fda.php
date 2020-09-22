<?php $__env->startSection('title', 'LmSail 社区专栏'); ?>

<?php $__env->startSection('css'); ?>
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
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="ui centered grid container main stackable blog" style="min-height: 500px;">
        <div class="sixteen wide column docs-main-content">

            <div class="ui header text-center" style="font-size: 26px;font-weight: bold;margin-top: 26px;margin-bottom: 36px;">
                LmSail社区专栏
                <!--<a href="" target="_blank" class="ui button tiny mt-2 pull-right">-->
                <!--    <i class="icon plus"></i>创建专栏-->
                <!--</a>-->
            </div>
            <div class="ui three column grid stackable">
                
                <?php $__currentLoopData = $list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="column">
                    <div class="ui fluid card stackable">
                        <a class="image" href="<?php echo e(url('specialist', ['id' => $val->id]), false); ?>">
                            <img src="<?php echo e($val->logo ? '/uploads/' . $val->logo : asset('blog/picture/laravel.png'), false); ?>" style="height: 230px">
                        </a>
                        <div class="content">
                            <a class="header" href="<?php echo e(url('specialist', ['id' => $val->id]), false); ?>"><?php echo e($val->name, false); ?></a>
                            <div class="meta">
                                <i class="user secret icon"></i>
                                记录者/作者：Mr.bo
                            </div>
                            <div class="meta">
                                <i class="icon flag"></i>
                                共发表文章：<b><?php echo e($val->post_count, false); ?></b> 篇
                            </div>
                        </div>

                        <div class="extra content"><?php echo e($val->description, false); ?></div>
                    </div>
                </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> 

             </div>
    
        </div>
        <div class="clearfix"></div>
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.blog.blog', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /www/wwwroot/www.lmsail.com/resources/views/special/special.blade.php ENDPATH**/ ?>