<div class="box box-default">
    <div class="box-header with-border">
        <h3 class="box-title">Dependencies</h3>

        <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
        </div>
    </div>

    <!-- /.box-header -->
    <div class="box-body">
        <div class="table-responsive">
            <table class="table table-striped">
                <?php $__currentLoopData = $dependencies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $dependency => $version): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                    <td width="240px"><?php echo e($dependency, false); ?></td>
                    <td><span class="label label-primary"><?php echo e($version, false); ?></span></td>
                </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </table>
        </div>
        <!-- /.table-responsive -->
    </div>
    <!-- /.box-body -->
</div><?php /**PATH /www/wwwroot/www.blog.com/vendor/encore/laravel-admin/src/../resources/views/dashboard/dependencies.blade.php ENDPATH**/ ?>