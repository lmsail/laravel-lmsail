<?php if(Admin::user()->visible($item['roles']) && (empty($item['permission']) ?: Admin::user()->can($item['permission']))): ?>
    <?php if(!isset($item['children'])): ?>
        <li>
            <?php if(url()->isValidUrl($item['uri'])): ?>
                <a href="<?php echo e($item['uri'], false); ?>" target="_blank">
            <?php else: ?>
                 <a href="<?php echo e(admin_base_path($item['uri']), false); ?>">
            <?php endif; ?>
                <i class="fa <?php echo e($item['icon'], false); ?>"></i>
                <?php if(Lang::has($titleTranslation = 'admin.menu_titles.' . trim(str_replace(' ', '_', strtolower($item['title']))))): ?>
                    <span><?php echo e(__($titleTranslation), false); ?></span>
                <?php else: ?>
                    <span><?php echo e($item['title'], false); ?></span>
                <?php endif; ?>
            </a>
        </li>
    <?php else: ?>
        <li class="treeview">
            <a href="#">
                <i class="fa <?php echo e($item['icon'], false); ?>"></i>
                <?php if(Lang::has($titleTranslation = 'admin.menu_titles.' . trim(str_replace(' ', '_', strtolower($item['title']))))): ?>
                    <span><?php echo e(__($titleTranslation), false); ?></span>
                <?php else: ?>
                    <span><?php echo e($item['title'], false); ?></span>
                <?php endif; ?>
                <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
                <?php $__currentLoopData = $item['children']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php echo $__env->make('admin::partials.menu', $item, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </ul>
        </li>
    <?php endif; ?>
<?php endif; ?><?php /**PATH /www/wwwroot/www.lmsail.com/vendor/encore/laravel-admin/src/../resources/views/partials/menu.blade.php ENDPATH**/ ?>