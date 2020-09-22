<style>
    .files > li {
        float: left;
        width: 150px;
        border: 1px solid #eee;
        margin-bottom: 10px;
        margin-right: 10px;
        position: relative;
    }

    .files>li>.file-select {
        position: absolute;
        top: -4px;
        left: -1px;
    }

    .file-icon {
        text-align: center;
        font-size: 65px;
        color: #666;
        display: block;
        height: 100px;
    }

    .file-info {
        text-align: center;
        padding: 10px;
        background: #f4f4f4;
    }

    .file-name {
        font-weight: bold;
        color: #666;
        display: block;
        overflow: hidden !important;
        white-space: nowrap !important;
        text-overflow: ellipsis !important;
    }

    .file-size {
        color: #999;
        font-size: 12px;
        display: block;
    }

    .files {
        list-style: none;
        margin: 0;
        padding: 0;
    }

    .file-icon.has-img {
        padding: 0;
    }

    .file-icon.has-img>img {
         max-width: 100%;
         height: auto;
         max-height: 92px;
     }

</style>

<script data-exec-on-popstate>

$(function () {
    $('.file-delete').click(function () {

        var path = $(this).data('path');

        swal({
            title: "<?php echo e(trans('admin.delete_confirm'), false); ?>",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "<?php echo e(trans('admin.confirm'), false); ?>",
            showLoaderOnConfirm: true,
            closeOnConfirm: false,
            cancelButtonText: "<?php echo e(trans('admin.cancel'), false); ?>",
            preConfirm: function() {
                return new Promise(function(resolve) {

                    $.ajax({
                        method: 'delete',
                        url: '<?php echo e($url['delete'], false); ?>',
                        data: {
                            'files[]':[path],
                            _token:LA.token
                        },
                        success: function (data) {
                            $.pjax.reload('#pjax-container');

                            resolve(data);
                        }
                    });

                });
            }
        }).then(function(result){
            var data = result.value;
            if (typeof data === 'object') {
                if (data.status) {
                    swal(data.message, '', 'success');
                } else {
                    swal(data.message, '', 'error');
                }
            }
        });
    });

    $('#moveModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget);
        var name = button.data('name');

        var modal = $(this);
        modal.find('[name=path]').val(name)
        modal.find('[name=new]').val(name)
    });

    $('#urlModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget);
        var url = button.data('url');

        $(this).find('input').val(url)
    });

    $('#file-move').on('submit', function (event) {

        event.preventDefault();

        var form = $(this);

        var path = form.find('[name=path]').val();
        var name = form.find('[name=new]').val();

        $.ajax({
            method: 'put',
            url: '<?php echo e($url['move'], false); ?>',
            data: {
                path: path,
                'new': name,
                _token:LA.token,
            },
            success: function (data) {
                $.pjax.reload('#pjax-container');

                if (typeof data === 'object') {
                    if (data.status) {
                        toastr.success(data.message);
                    } else {
                        toastr.error(data.message);
                    }
                }
            }
        });

        closeModal();
    });

    $('.file-upload').on('change', function () {
        $('.file-upload-form').submit();
    });

    $('#new-folder').on('submit', function (event) {

        event.preventDefault();

        var formData = new FormData(this);

        $.ajax({
            method: 'POST',
            url: '<?php echo e($url['new-folder'], false); ?>',
            data: formData,
            async: false,
            success: function (data) {
                $.pjax.reload('#pjax-container');

                if (typeof data === 'object') {
                    if (data.status) {
                        toastr.success(data.message);
                    } else {
                        toastr.error(data.message);
                    }
                }
            },
            cache: false,
            contentType: false,
            processData: false
        });

        closeModal();
    });

    function closeModal() {
        $("#moveModal").modal('toggle');
        $('body').removeClass('modal-open');
        $('.modal-backdrop').remove();
    }

    $('.media-reload').click(function () {
        $.pjax.reload('#pjax-container');
    });

    $('.goto-url button').click(function () {
        var path = $('.goto-url input').val();
        $.pjax({container:'#pjax-container', url: '<?php echo e($url['index'], false); ?>?path=' + path });
    });

    $('.file-select>input').iCheck({checkboxClass:'icheckbox_minimal-blue'});

    $('.file-delete-multiple').click(function () {
        var files = $(".file-select input:checked").map(function(){
            return $(this).val();
        }).toArray();

        if (!files.length) {
            return;
        }

        swal({
            title: "<?php echo e(trans('admin.delete_confirm'), false); ?>",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "<?php echo e(trans('admin.confirm'), false); ?>",
            showLoaderOnConfirm: true,
            closeOnConfirm: false,
            cancelButtonText: "<?php echo e(trans('admin.cancel'), false); ?>",
            preConfirm: function() {
                return new Promise(function(resolve) {

                    $.ajax({
                        method: 'delete',
                        url: '<?php echo e($url['delete'], false); ?>',
                        data: {
                            'files[]': files,
                            _token:LA.token
                        },
                        success: function (data) {
                            $.pjax.reload('#pjax-container');

                            resolve(data);
                        }
                    });

                });
            }
        }).then(function (result) {
            var data = result.value;
            if (typeof data === 'object') {
                if (data.status) {
                    swal(data.message, '', 'success');
                } else {
                    swal(data.message, '', 'error');
                }
            }
        });
    });
});

</script>

<div class="row">
    <!-- /.col -->
    <div class="col-md-12">
        <div class="box box-primary">

            <div class="box-body no-padding">

                <div class="mailbox-controls with-border">
                    <div class="btn-group">
                        <a href="" type="button" class="btn btn-default btn media-reload" title="Refresh">
                            <i class="fa fa-refresh"></i>
                        </a>
                        <a type="button" class="btn btn-default btn file-delete-multiple" title="Delete">
                            <i class="fa fa-trash-o"></i>
                        </a>
                    </div>
                    <!-- /.btn-group -->
                    <label class="btn btn-default btn">
                        <i class="fa fa-upload"></i>&nbsp;&nbsp;<?php echo e(trans('admin.upload'), false); ?>

                        <form action="<?php echo e($url['upload'], false); ?>" method="post" class="file-upload-form" enctype="multipart/form-data" pjax-container>
                            <input type="file" name="files[]" class="hidden file-upload" multiple>
                            <input type="hidden" name="dir" value="<?php echo e($url['path'], false); ?>" />
                            <?php echo e(csrf_field(), false); ?>

                        </form>
                    </label>

                    <!-- /.btn-group -->
                    <a class="btn btn-default btn" data-toggle="modal" data-target="#newFolderModal">
                        <i class="fa fa-folder"></i>&nbsp;&nbsp;<?php echo e(trans('admin.new_folder'), false); ?>

                    </a>

                    <div class="btn-group">
                        <a href="<?php echo e(route('media-index', ['path' => $url['path'], 'view' => 'table']), false); ?>" class="btn btn-default <?php echo e(request('view') == 'table' ? 'active' : '', false); ?>"><i class="fa fa-list"></i></a>
                        <a href="<?php echo e(route('media-index', ['path' => $url['path'], 'view' => 'list']), false); ?>" class="btn btn-default <?php echo e(request('view') == 'list' ? 'active' : '', false); ?>"><i class="fa fa-th"></i></a>
                    </div>

                    
                    <div class="input-group input-group-sm pull-right goto-url" style="width: 250px;">
                        <input type="text" name="path" class="form-control pull-right" value="<?php echo e('/'.trim($url['path'], '/'), false); ?>">

                        <div class="input-group-btn">
                            <button type="submit" class="btn btn-default"><i class="fa fa-arrow-right"></i></button>
                        </div>
                    </div>
                    

                </div>

                <!-- /.mailbox-read-message -->
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
                <ol class="breadcrumb" style="margin-bottom: 10px;">

                    <li><a href="<?php echo e(route('media-index'), false); ?>"><i class="fa fa-th-large"></i> </a></li>

                    <?php $__currentLoopData = $nav; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <li><a href="<?php echo e($item['url'], false); ?>"> <?php echo e($item['name'], false); ?></a></li>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </ol>
                <ul class="files clearfix">

                    <?php if(empty($list)): ?>
                        <li style="height: 200px;border: none;"></li>
                    <?php else: ?>
                        <?php $__currentLoopData = $list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <li>
                            <span class="file-select">
                                <input type="checkbox" value="<?php echo e($item['name'], false); ?>"/>
                            </span>

                            <?php echo $item['preview']; ?>


                            <div class="file-info">
                                <a <?php if(!$item['isDir']): ?>target="_blank"<?php endif; ?> href="<?php echo e($item['link'], false); ?>" class="file-name" title="<?php echo e($item['name'], false); ?>">
                                    <?php echo e($item['icon'], false); ?> <?php echo e(basename($item['name']), false); ?>

                                </a>
                            <span class="file-size">
                              <?php echo e($item['size'], false); ?>&nbsp;

                                <div class="btn-group btn-group-xs pull-right">
                                    <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#" class="file-rename" data-toggle="modal" data-target="#moveModal" data-name="<?php echo e($item['name'], false); ?>">Rename & Move</a></li>
                                        <li><a href="#" class="file-delete" data-path="<?php echo e($item['name'], false); ?>">Delete</a></li>
                                        <?php if (! ($item['isDir'])): ?>
                                        <li><a target="_blank" href="<?php echo e($item['download'], false); ?>">Download</a></li>
                                        <?php endif; ?>
                                        <li class="divider"></li>
                                        <li><a href="#" data-toggle="modal" data-target="#urlModal" data-url="<?php echo e($item['url'], false); ?>">Url</a></li>
                                    </ul>
                                </div>
                            </span>
                            </div>
                        </li>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endif; ?>
                </ul>
            </div>
            <!-- /.box-footer -->
            <!-- /.box-footer -->
        </div>
        <!-- /. box -->
    </div>
    <!-- /.col -->
</div>

<div class="modal fade" id="moveModal" tabindex="-1" role="dialog" aria-labelledby="moveModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="moveModalLabel">Rename & Move</h4>
            </div>
            <form id="file-move">
            <div class="modal-body">
                <div class="form-group">
                    <label for="recipient-name" class="control-label">Path:</label>
                    <input type="text" class="form-control" name="new" />
                </div>
                <input type="hidden" name="path"/>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary btn-sm">Submit</button>
            </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="urlModal" tabindex="-1" role="dialog" aria-labelledby="urlModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="urlModalLabel">Url</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <input type="text" class="form-control" />
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="newFolderModal" tabindex="-1" role="dialog" aria-labelledby="newFolderModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="newFolderModalLabel">New folder</h4>
            </div>
            <form id="new-folder">
                <div class="modal-body">
                    <div class="form-group">
                        <input type="text" class="form-control" name="name" />
                    </div>
                    <input type="hidden" name="dir" value="<?php echo e($url['path'], false); ?>"/>
                    <?php echo e(csrf_field(), false); ?>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary btn-sm">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>
<?php /**PATH /www/wwwroot/www.blog.com/vendor/laravel-admin-ext/media-manager/src/../resources/views/list.blade.php ENDPATH**/ ?>