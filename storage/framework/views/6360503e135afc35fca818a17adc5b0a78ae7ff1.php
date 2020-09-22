<div class="<?php echo e($viewClass['form-group'], false); ?> <?php echo !$errors->has($errorKey) ? '' : 'has-error'; ?>">

    <label for="<?php echo e($id, false); ?>" class="<?php echo e($viewClass['label'], false); ?> control-label"><?php echo e($label, false); ?></label>

    <div class="<?php echo e($viewClass['field'], false); ?>">

        <?php echo $__env->make('admin::form.error', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

        <?php $__currentLoopData = $options; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $option => $label): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php if(!$inline): ?><div class="radio"><?php endif; ?>
                <label <?php if($inline): ?>class="radio-inline"<?php endif; ?>>
                    <input type="radio" name="<?php echo e($name, false); ?>" value="<?php echo e($option, false); ?>" class="minimal <?php echo e($class, false); ?>" <?php echo e(($option == old($column, $value)) || ($value === null && in_array($label, $checked)) ?'checked':'', false); ?> <?php echo $attributes; ?> />&nbsp;<?php echo e($label, false); ?>&nbsp;&nbsp;
                </label>
            <?php if(!$inline): ?></div><?php endif; ?>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

        <?php echo $__env->make('admin::form.help-block', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    </div>
</div>
<?php /**PATH /www/wwwroot/www.blog.com/vendor/encore/laravel-admin/src/../resources/views/form/radio.blade.php ENDPATH**/ ?>