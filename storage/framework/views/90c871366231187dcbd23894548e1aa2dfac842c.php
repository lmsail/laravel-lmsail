<div class="box">
    <?php if(isset($title)): ?>
    <div class="box-header with-border">
        <h3 class="box-title"> <?php echo e($title, false); ?></h3>
    </div>
    <?php endif; ?>

    <?php if( $grid->showTools() || $grid->showExportBtn() || $grid->showCreateBtn() ): ?>
    <div class="box-header with-border">
        <div class="pull-right">
            <?php echo $grid->renderColumnSelector(); ?>

            <?php echo $grid->renderExportButton(); ?>

            <?php echo $grid->renderCreateButton(); ?>

        </div>
        <?php if( $grid->showTools() ): ?>
        <span>
            <?php echo $grid->renderHeaderTools(); ?>

        </span>
        <?php endif; ?>
    </div>
    <?php endif; ?>

    <?php echo $grid->renderFilter(); ?>


    <?php echo $grid->renderHeader(); ?>


    <!-- /.box-header -->
    <div class="box-body table-responsive no-padding">
        <table class="table table-hover">
            <thead>
                <tr>
                    <?php $__currentLoopData = $grid->visibleColumns(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $column): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <th><?php echo e($column->getLabel(), false); ?><?php echo $column->sorter(); ?></th>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </tr>
            </thead>

            <tbody>
                <?php $__currentLoopData = $grid->rows(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr <?php echo $row->getRowAttributes(); ?>>
                    <?php $__currentLoopData = $grid->visibleColumnNames(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $name): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <td <?php echo $row->getColumnAttributes($name); ?>>
                        <?php echo $row->column($name); ?>

                    </td>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </tbody>
        </table>

    </div>

    <?php echo $grid->renderFooter(); ?>


    <div class="box-footer clearfix">
        <?php echo $grid->paginator(); ?>

    </div>
    <!-- /.box-body -->
</div>
<?php /**PATH /www/wwwroot/www.blog.com/vendor/encore/laravel-admin/src/../resources/views/grid/table.blade.php ENDPATH**/ ?>