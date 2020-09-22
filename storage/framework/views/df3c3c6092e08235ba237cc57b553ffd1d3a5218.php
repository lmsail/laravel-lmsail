<div class="<?php echo e($viewClass['form-group'], false); ?> <?php echo !$errors->has($errorKey) ? '' : 'has-error'; ?>">

    <label for="<?php echo e($id, false); ?>" class="<?php echo e($viewClass['label'], false); ?> control-label"><?php echo e($label, false); ?></label>

    <div class="<?php echo e($viewClass['field'], false); ?> <?php echo e($scopeClass, false); ?>">

        <?php echo $__env->make('admin::form.error', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

        <textarea id="<?php echo e($id, false); ?>"><?php echo old($column, $value); ?></textarea>

        <input type="hidden" name="<?php echo e($name, false); ?>" value="<?php echo e(old($column, $value), false); ?>"/>

        <?php echo $__env->make('admin::form.help-block', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    </div>
</div>

<style>
.<?php echo e($scopeClass, false); ?> .editor-toolbar.fullscreen, .<?php echo e($scopeClass, false); ?> .CodeMirror-fullscreen {
    z-index: 10000 !important;
}

.<?php echo e($scopeClass, false); ?> .CodeMirror {
    height: <?php echo e($height ?: 300, false); ?>px;
}
</style><?php /**PATH /var/www/html/blog/vendor/laravel-admin-ext/simplemde/src/../resources/views/simplemde.blade.php ENDPATH**/ ?>