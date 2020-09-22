<script data-exec-on-popstate>

    $(function () {
        LA.intervalIds = [];
        LA.addIntervalId = function (intervalId, persist) {
            this.intervalIds.push({id:intervalId, persist:persist});
        };

        LA.clearIntervalId = function (intervalId) {
            for (var id in this.intervalIds) {
                if (intervalId == this.intervalIds[id].id && !this.intervalIds[id].persist) {
                    clearInterval(intervalId);
                    this.intervalIds.splice(id, 1);
                }
            }
        };

        LA.cleanIntervalId = function () {
            for (var id in this.intervalIds) {
                if (!this.intervalIds[id].persist) {
                    clearInterval(this.intervalIds[id].id);
                    this.intervalIds.splice(id, 1);
                }
            }
        };

        $(document).on('pjax:complete', function(xhr) {
            $.admin.cleanIntervalId();
        });

        $('.log-refresh').on('click', function() {
            $.pjax.reload('#pjax-container');
        });

        var pos = <?php echo e($end, false); ?>;

        function changePos(offset){
            pos = offset;
        }

        function fetch() {
            $.ajax({
                url:'<?php echo e($tailPath, false); ?>',
                method: 'get',
                data : {offset : pos},
                success:function(data) {
                    for (var i in data.logs) {
                        $('table > tbody > tr:first').before(data.logs[i]);
                    }
                    changePos(data.pos);
                }
            });
        }

        var refreshIntervalId = null;

        $('.log-live').click(function() {
            $("i", this).toggleClass("fa-play fa-pause");

            if (refreshIntervalId) {
                $.admin.clearIntervalId(refreshIntervalId);
                refreshIntervalId = null;
            } else {
                refreshIntervalId = setInterval(function() {
                    fetch();
                }, 2000);
                $.admin.addIntervalId(refreshIntervalId, false);
            }
        });
    });


</script>
<div class="row">

    <!-- /.col -->
    <div class="col-md-10">
        <div class="box box-primary">
            <div class="box-header with-border">
                <button type="button" class="btn btn-primary btn-sm log-refresh"><i class="fa fa-refresh"></i> <?php echo e(trans('admin.refresh'), false); ?></button>
                <button type="button" class="btn btn-default btn-sm log-live"><i class="fa fa-play"></i> </button>
                <div class="pull-right">
                    <div class="btn-group">
                        <?php if($prevUrl): ?>
                        <a href="<?php echo e($prevUrl, false); ?>" class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></a>
                        <?php endif; ?>
                        <?php if($nextUrl): ?>
                        <a href="<?php echo e($nextUrl, false); ?>" class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></a>
                        <?php endif; ?>
                    </div>
                    <!-- /.btn-group -->
                </div>
                <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">

                <div class="table-responsive">
                    <table class="table table-hover">

                        <thead>
                            <tr>
                                <th>Level</th>
                                <th>Env</th>
                                <th>Time</th>
                                <th>Message</th>
                                <th></th>
                            </tr>
                        </thead>

                        <tbody>

                        <?php $__currentLoopData = $logs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $log): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                            <tr>
                                <td><span class="label bg-<?php echo e(\Encore\Admin\LogViewer\LogViewer::$levelColors[$log['level']], false); ?>"><?php echo e($log['level'], false); ?></span></td>
                                <td><strong><?php echo e($log['env'], false); ?></strong></td>
                                <td style="width:150px;"><?php echo e($log['time'], false); ?></td>
                                <td><code style="word-break: break-all;"><?php echo e($log['info'], false); ?></code></td>
                                <td>
                                    <?php if(!empty($log['trace'])): ?>
                                    <a class="btn btn-primary btn-xs" data-toggle="collapse" data-target=".trace-<?php echo e($index, false); ?>"><i class="fa fa-info"></i>&nbsp;&nbsp;Exception</a>
                                    <?php endif; ?>
                                </td>
                            </tr>

                            <?php if(!empty($log['trace'])): ?>
                            <tr class="collapse trace-<?php echo e($index, false); ?>">
                                <td colspan="5"><div style="white-space: pre-wrap;background: #333;color: #fff; padding: 10px;"><?php echo e($log['trace'], false); ?></div></td>
                            </tr>
                            <?php endif; ?>

                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                        </tbody>
                    </table>
                    <!-- /.table -->
                </div>
                <!-- /.mail-box-messages -->
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /. box -->
    </div>

    <div class="col-md-2">

        <div class="box box-solid">
            <div class="box-header with-border">
                <h3 class="box-title">Files</h3>
            </div>
            <div class="box-body no-padding">
                <ul class="nav nav-pills nav-stacked">
                    <?php $__currentLoopData = $logFiles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $logFile): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <li <?php if($logFile == $fileName): ?>class="active"<?php endif; ?>>
                            <a href="<?php echo e(route('log-viewer-file', ['file' => $logFile]), false); ?>"><i class="fa fa-<?php echo e(($logFile == $fileName) ? 'folder-open' : 'folder', false); ?>"></i><?php echo e($logFile, false); ?></a>
                        </li>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </ul>
            </div>
            <!-- /.box-body -->
        </div>

        <div class="box box-solid">
            <div class="box-header with-border">
                <h3 class="box-title">Info</h3>
            </div>
            <div class="box-body no-padding">
                <ul class="nav nav-pills nav-stacked">
                    <li class="margin: 10px;">
                        <a>Size: <?php echo e($size, false); ?></a>
                    </li>
                    <li class="margin: 10px;">
                        <a>Updated at: <?php echo e(date('Y-m-d H:i:s', filectime($filePath)), false); ?></a>
                    </li>
                </ul>
            </div>
            <!-- /.box-body -->
        </div>

        <!-- /.box -->
    </div>
    <!-- /.col -->
</div><?php /**PATH /var/www/html/blog/vendor/laravel-admin-ext/log-viewer/src/../resources/views/logs.blade.php ENDPATH**/ ?>