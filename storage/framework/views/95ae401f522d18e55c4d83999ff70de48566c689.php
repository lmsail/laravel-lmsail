<style>
    .ext-icon {
        color: rgba(0,0,0,0.5);
        margin-left: 10px;
    }
    .installed {
        color: #00a65a;
        margin-right: 10px;
    }
</style>
<div class="box box-default">
    <div class="box-header with-border">
        <h3 class="box-title">Available extensions</h3>

        <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
        </div>
    </div>
    <!-- /.box-header -->
    <div class="box-body">
        <ul class="products-list product-list-in-box">

            <?php $__currentLoopData = $extensions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $extension): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <li class="item">
                <div class="product-img">
                    <i class="fa fa-<?php echo e($extension['icon'], false); ?> fa-2x ext-icon"></i>
                </div>
                <div class="product-info">
                    <a href="<?php echo e($extension['link'], false); ?>" target="_blank" class="product-title">
                        <?php echo e($extension['name'], false); ?>

                    </a>
                    <?php if($extension['installed']): ?>
                        <span class="pull-right installed"><i class="fa fa-check"></i></span>
                    <?php endif; ?>
                </div>
            </li>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            <!-- /.item -->
        </ul>
    </div>
    <!-- /.box-body -->
    <div class="box-footer text-center">
        <a href="https://github.com/laravel-admin-extensions" target="_blank" class="uppercase">View All Extensions</a>
    </div>
    <!-- /.box-footer -->
</div><?php /**PATH /www/wwwroot/www.lmsail.com/vendor/encore/laravel-admin/src/../resources/views/dashboard/extensions.blade.php ENDPATH**/ ?>