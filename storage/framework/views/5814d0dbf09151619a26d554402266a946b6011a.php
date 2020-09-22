<div <?php echo $attributes; ?>>
    <ul class="nav nav-tabs nav-tabs">

        <?php $__currentLoopData = $tabs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $id => $tab): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php if($tab['type'] == \Encore\Admin\Widgets\Tab::TYPE_CONTENT): ?>
                <li <?php echo e($id == $active ? 'class=active' : '', false); ?>><a href="#tab_<?php echo e($tab['id'], false); ?>" data-toggle="tab"><?php echo e($tab['title'], false); ?></a></li>
            <?php elseif($tab['type'] == \Encore\Admin\Widgets\Tab::TYPE_LINK): ?>
                <li <?php echo e($id == $active ? 'class=active' : '', false); ?>><a href="<?php echo e($tab['href'], false); ?>"><?php echo e($tab['title'], false); ?></a></li>
            <?php endif; ?>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

        <?php if(!empty($dropDown)): ?>
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                Dropdown <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
                <?php $__currentLoopData = $dropDown; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $link): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="<?php echo e($link['href'], false); ?>"><?php echo e($link['name'], false); ?></a></li>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </ul>
        </li>
        <?php endif; ?>
        <li class="pull-right header"><?php echo e($title, false); ?></li>
    </ul>
    <div class="tab-content">
        <?php $__currentLoopData = $tabs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $id => $tab): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="tab-pane <?php echo e($id == $active ? 'active' : '', false); ?>" id="tab_<?php echo e($tab['id'], false); ?>">
            <?php echo array_get($tab, 'content'); ?>

        </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

    </div>
</div><?php /**PATH /www/wwwroot/www.blog.com/vendor/encore/laravel-admin/src/../resources/views/widgets/tab.blade.php ENDPATH**/ ?>