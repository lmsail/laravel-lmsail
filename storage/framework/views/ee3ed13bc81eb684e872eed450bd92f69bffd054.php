

<?php $__env->startSection('title', '社区用户列表'); ?>

<?php $__env->startSection('css'); ?>
    <style>
        .ui.grid>* {
            padding-left: 0;
            padding-right: 0;
        }
        .column {
            text-align: center;
        }
        h4.name {
            color: #000;
            font-size: 21px;
            font-weight: 700;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            margin-top: 0;
        }
        .description {
            margin: 0 auto 10px;
            max-width: 180px;
            /*min-height: 50px;*/
            font-size: 13px;
            line-height: 25px;
        }
        .new {
            font-size: 13px;
            line-height: 25px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            display: block;
        }
        .ui.grid>.column:not(.row) {
            padding-top: 0rem;
        }
        .ui.segment, .ui.menu {
            border: none;
            background: transparent;
            box-shadow: 0 0 0 #fff;
        }
    </style>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="ui grid container centered text-center books-page stackable cheatsheet pb-3">
        <div class="ui four stackable cards mt-2" style="width:100%">
            <?php $__currentLoopData = $list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="card">
    
                <a class="image" href="<?php echo e(url('blog', [$val->username, $val->id]), false); ?>">
                    <img src="<?php echo e($val->avatar ? $val->avatar : asset('blog/picture/laravel.png'), false); ?>">
                </a>
    
                <h2 class="my-3 mx-2 fw-bold rm-link-color">
                    <a href="<?php echo e(url('blog', [$val->username, $val->id]), false); ?>">
                        <?php echo e($val->nickname, false); ?>

                        <?php if($val->special == 1): ?> <i data-content="社区 `创建者` 与 `贡献者` 特殊标识" class="ui popover vimeo square icon" style="color: #FFB800;"></i> <?php endif; ?>    
                    </a>
                </h2>
                
                <p class="description"><?php echo e($val->introduction ? $val->introduction : '这个用户好懒，啥都木有留下~', false); ?></p>
    
                <div class="extra content">
                    <?php if(count($val->blog)): ?>
                        <?php $__currentLoopData = $val->blog; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $blog): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div><a class="new" target="_blank" href="<?php echo e(url('article', [$blog->id, $blog->user_id]), false); ?>"><?php echo e($blog->title, false); ?></a></div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php else: ?>
                        <div class="empty">空空如也</div>
                    <?php endif; ?>
                </div>
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
        
        <div class="ui pagination menu stackable">
            <?php echo e($list->links(), false); ?>

        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.blog.blog', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /www/wwwroot/www.lmsail.com/resources/views/blog/users/list.blade.php ENDPATH**/ ?>