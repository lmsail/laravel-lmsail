<div class="form-group">
    <label class="col-sm-2 control-label"> <?php echo e($label, false); ?></label>
    <div class="col-sm-8">
        <?php echo $__env->make($presenter->view(), \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div><?php /**PATH /www/wwwroot/www.lmsail.com/vendor/encore/laravel-admin/src/../resources/views/filter/where.blade.php ENDPATH**/ ?>