

<?php $__env->startSection('title', $details->title); ?>

<?php $__env->startSection('css'); ?>

    <style>
        .blog.grid.container.main{display:block}
        .blog.grid.container.main .sidebar{font-size:14px;padding-right:6px}
        .ui.grid>*{padding-left:0;padding-right:0}
        .nav-list .nav-list .nav-list li{text-indent:20px!important}
        .fixed{position:fixed;top:10px}
        .rm-link-color hr{height:0;overflow:hidden;background:0 0;border:2px dashed #f0f4f6;border-bottom:0;margin:18px auto;width:50%}
        .rm-link-color p{line-height:3.4285em!important}
        .editor-preview pre,.editor-preview-active-side pre,.markdown-body pre{/* margin:1.5em -35px; */border-radius:0;padding:1.5em 35px}
        .rm-link-color blockquote{margin-left:0!important}
        .ui .pagination{padding-left:2.2rem;background:0 0}
        .author-user:before {display: none!important}
    </style>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="ui centered grid container">
        <div class="twelve wide column pull-left main main-column">
            <div class="ui segment article-content">
                <div class="extra-padding" style="padding-bottom:4px">
                    <?php if(Session::has('success')): ?>
                        <div class="ui green message"><i class="check circle icon"></i> <?php echo e(Session::get('success'), false); ?></div>
                    <?php endif; ?>
                    <h1 style="margin-bottom: 15px;">
                        <div class="pull-left">
                            <span class="hide-on-mobile"></span>
                            <span style="line-height: 34px;"><?php echo e($details->title, false); ?></span>
                        </div>
                        <div class="clearfix"></div>
                    </h1>
                    <p class="book-article-meta" style="margin-bottom: 10px;">
                        <a class="ui popover" href="javascript:">
                            <img class="ui image display-inline-block mr-1" style="width:16px;height:16px;margin-top:-3px" src="<?php echo e($details->category->logo ? '/uploads/' . $details->category->logo : asset('blog/picture/laravel.png'), false); ?>">
                            <?php echo e($details->category->name ? $details->category->name : '其他', false); ?>

                        </a>
                        <span class="divider">/</span>
                        <a class="" data-inverted="" data-tooltip="<?php echo e($details->created_at, false); ?>">
                            <i class="icon time"></i>  <span title="<?php echo e($details->created_at, false); ?>"><?php echo e($details->created_at->diffForHumans(), false); ?></span>
                        </a>
                        <span class="divider">/</span>
                        <span class="text-mute">
                            <i class="icon eye open"></i> <?php echo e($details->view, false); ?>

                        </span>
                        <span class="divider">/</span>
                        <span class="text-mute">
                            <i class="icon comments outline"></i> <?php echo e($details->comment, false); ?>

                        </span>

                        <?php if(strtotime($details->updated_at) > strtotime($details->created_at)): ?>
                        <span class="divider">/</span>
                        <a class="javascript:;" data-inverted="" data-tooltip="<?php echo e($details->updated_at, false); ?>">
                            <span title="<?php echo e($details->updated_at, false); ?>">更新于 <?php echo e($details->updated_at->diffForHumans(), false); ?></span>
                        </a>
                        <?php endif; ?>
                    </p>
                    <div class="ui divider"></div>

                    <div class="ui readme markdown-body content-body article-content fluidbox-content">
                        <?php echo analysis_face($details->content); ?>

                    </div>

                    <?php if(!empty($details->tags)): ?>
                        <div class="meta" style="margin: 35px 0px;">
                            <i class="icon tags"></i>
                            <?php if(!empty($details->tags)): ?>
                                <?php $__currentLoopData = $details->tags; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $v): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?> <a class="ui label small yellow topic-tag" href=""><?php echo e($v, false); ?></a> <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <?php endif; ?>
                        </div>
                    <?php endif; ?>

                    <div>
                        <a class="ui popover" data-content="作者署名，你可以在『个人资料』里设置" target="_blank" style="display: block;width: 30px;color: #ccc;margin: 22px 0 8px;"><i class="icon paw" aria-hidden="true"></i></a>
                        <?php if($statistics['userinfo']->autograph): ?>
                            <span class="rm-link-color"><hr>
                                <p><?php echo analysis_face($statistics['userinfo']->autograph); ?></p>
                            </span>
                        <?php endif; ?>
                    </div>

                    <div class="admin-operation" style="line-height: 32px;display: none">
                        本帖由系统于 <?php echo e($details->created_at->diffForHumans(), false); ?> 自动加精
                    </div>

                    <div class="ui horizontal list topic-operations" style="margin-bottom: 0px;margin-top:10px">
                        <a class="popover item ui topic-vote" title="点赞" data-id="<?php echo e($details->id, false); ?>" data-uid="<?php echo e($details->user_id, false); ?>" data-type="2" href="javascript:;">
                            <div class="top aligned content">
                                <i class="icon thumbs up outline"></i> 点赞 <span class="vote-count"><?php echo e($details->praise, false); ?></span>
                            </div>
                        </a>
                        <a class="item ui popover report-modal" href="javascript:$('.ui.modal').modal('show');" data-content="举报违规内容，共建品质社区">
                            <div class="top aligned content">
                                <i class="icon flag outline"></i> 举报
                            </div>
                        </a>
                        <?php if($details->user_id == Auth::id()): ?>
                            <a class="item attend-topic" href="<?php echo e(url('blogedit', [$details->id]), false); ?>">
                                <div class="top aligned content">
                                    <i class="edit icon fs-large "></i> <span class="state">编辑</span>
                                </div>
                            </a>

                            <?php if(config('blog.delete') == 1): ?>
                            <a class="item attend-topic" href="javascript:blogdelete(this, <?php echo e($details->id, false); ?>);">
                                <div class="top aligned content">
                                    <i class="trash alternate outline icon"></i> <span class="state">删除</span>
                                </div>
                            </a>
                            <?php endif; ?>
                        <?php endif; ?>

                        <a class="item attend-topic" href="javascript:;">
                            <div class="top aligned content">
                                <i class="columns icon"></i> <span class="state">查看Markdown</span>
                            </div>
                        </a>
                    </div>
                </div>
            </div>

            
            <div class="ui message basic pt-2">
                <div class="ui comments pt-2" style="max-width: inherit;">
                    <div class="comment">
                        <a class="avatar" style="margin-left: 0" target="_blank" href="<?php echo e(url('blog', [$statistics['userinfo']->username, $statistics['userinfo']->id]), false); ?>">
                            <img class="" src="<?php echo e($statistics['userinfo']->avatar ? $statistics['userinfo']->avatar : asset('blog/picture/laravel.png'), false); ?>">
                        </a>
                        <div class="content author-user pt-2" style="margin-left: 66px;border: none;box-shadow: none">
                            <a class="author" target="_blank" href="<?php echo e(url('blog', [$statistics['userinfo']->username, $statistics['userinfo']->id]), false); ?>">
                                <?php echo e($statistics['userinfo']->username, false); ?>

                            </a>
                            <div class="metadata">
                                <a class="ml-1 rm-link-color mr-1" target="_blank" href="">
                                    <i class="icon trophy"></i><?php echo e($statistics['userinfo']->statistic->blognums, false); ?> 篇博客
                                </a>
                            </div>
                            <div class="text mt-2 rm-link-color">
                                <?php echo e($statistics['userinfo']->introduction ? $statistics['userinfo']->introduction : '暂无个人描述~', false); ?>&nbsp;
                                <button class="ui basic button small follow pull-right primary" style="position: relative;top: -19px;box-shadow: none!important;border: 1px solid #f4645f;color: #f4645f!important">
                                <i class="icon plus"></i> <span class="state">关注</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            
            <div class="ui message basic text-center pt-2" style="display: none">
                <div class="pt-0">
                    <div class="ui small horizontal list" style="font-size:16px;padding-top: 8px;display: flex;">
                        <div class="item" style="font-size: 15px;margin-right: 12px;font-size: 15px;margin-right: 12px;display: inline-flex;flex-shrink: 0;line-height: 26px;">
                            <a class="item rm-link-color" href="javascript:;" title="Vote Up">
                                <i class="icon thumbs up outline"></i> <span class="count vote-count"><?php echo e($details->praise, false); ?></span> 人点赞
                            </a>
                        </div>
                        <div class="users" style="display: inline-flex;-webkit-box-flex: 1;-webkit-box-flex: 1;-ms-flex-positive: 1;flex-grow: 1;-ms-flex-wrap: wrap;flex-wrap: wrap;overflow: hidden;height: 42px;">
                            <?php $__currentLoopData = $praise; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $zan): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <a class="item ui popover" data-content="<?php echo e($zan->nickname, false); ?>" style="margin-left: 2px;" href="<?php echo e(url('blog', [$zan->username, $zan->user_id]), false); ?>">
                                <img class="ui image avatar translator" src="<?php echo e($zan->avatar ? $zan->avatar : asset('blog/picture/laravel.png'), false); ?>" style="width: 34px;height: 34px;">
                            </a>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>
                    </div>
                </div>
            </div>

            <div id="replies" name="replies"></div>

            <?php echo $__env->make('blog.article._article_comment', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>

        <div class="four wide column pull-left sidebar" style="padding-right: 0px;">
            <?php echo $__env->make('blog.article._article_user', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>

        <div class="clearfix"></div>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>
    <script>var face_path = "<?php echo e(env('APP_URL'), false); ?>", dynamic_path = "<?php echo e(url('sendDynamic'), false); ?>", delpath = "<?php echo e(url('deldynamic'), false); ?>", replypraisepath = "<?php echo e(url('api/replypraise'), false); ?>";</script>
    <script src="<?php echo e(asset('blog/js/paste-upload-image.js'), false); ?>"></script>
    <script>
        articleIndex(); /* 生成目录索引 */
        makeExpandingArea(document.getElementById('comment-composing-box'));
        // 图片拖拽上传
        $("#comment-composing-box").pasteUploadImage("<?php echo e(url('api/upload'), false); ?>");
        $('.ui.feed').find("p>img").not(".emoji").click(function() {
            var imgsrc = $(this).attr("src");
            $("#img-show").fadeIn().find("#img-html").html("<img src='"+imgsrc+"'>");
        });

        function blogdelete(obj, id) {
            var _this = $(obj);
            swal({
                title : "Are you sure?",
                text : "确定要删除吗？",
                type : "warning",
                showCancelButton : true,
                confirmButtonColor : '#DD6B55',
                confirmButtonText : '确认',
                cancelButtonText : "取消",
            }, function(isConfirm) {
                if (isConfirm) {
                    _this.find("i").attr("class", "spinner loading icon");
                    sailAjax("<?php echo e(url('api/blogdel'), false); ?>", {id: id}, function(ret) {
                        _this.find("i").attr("class", "trash alternate outline icon");
                        if(ret.code == 200) {
                            swal({
                                title : "删除成功！",
                                text : ret.msg,
                                type : "success",
                                confirmButtonColor : '#DD6B55',
                            }, function() {
                                window.location.href = "<?php echo e(url('list'), false); ?>";
                            });
                        } else {
                            swal("删除失败！", ret.msg, "error");
                        }
                    });
                }
            });
        }

        <?php if(Session::has('to') || count($errors) || !empty($page)): ?>
            $('html,body').animate({scrollTop: ($(".comment-composing-box").offset().top - 50 )}, 300);
        <?php endif; ?>
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.blog.blog', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /www/wwwroot/www.blog.com/resources/views/blog/article/article.blade.php ENDPATH**/ ?>