<div class="form-group ">
    <label class="col-sm-2 control-label"><?php echo e($label, false); ?></label>
    <div class="col-sm-8">
        <?php if($wrapped): ?>
        <div class="box box-solid box-default no-margin box-show">
            <!-- /.box-header -->
            <div class="box-body">
                <?php if($escape): ?>
                    <?php echo e($content, false); ?>&nbsp;
                <?php else: ?>
                    <?php echo $content; ?>&nbsp;
                <?php endif; ?>
            </div><!-- /.box-body -->
        </div>
        <?php else: ?>
            <?php if($escape): ?>
                <?php echo e($content, false); ?>

            <?php else: ?>
                <?php echo $content; ?>

            <?php endif; ?>
        <?php endif; ?>
    </div>
</div><?php /**PATH /www/wwwroot/www.blog.com/vendor/encore/laravel-admin/src/../resources/views/show/field.blade.php ENDPATH**/ ?>