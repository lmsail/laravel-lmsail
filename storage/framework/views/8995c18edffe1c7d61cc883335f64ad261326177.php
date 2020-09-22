<?php $__env->startSection('title', 'LmSail 的博客'); ?>

<?php $__env->startSection('css'); ?>
    <style>
        .blog.grid.container.main {
            display: block;
        }

        .blog.grid.container.main .sidebar {
            font-size: 14px;
            padding-right:6px;
        }

        .ui.menu {
            -webkit-box-shadow: 0 0 0 #fff;
            box-shadow: 0 0 0 #fff;
        }

        .ui.pagination.menu {
            margin: 20px 0 30px 0;
        }
        .ui.grid>* {
            padding-left: 0;
            padding-right: 0;
        }
    </style>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="ui centered grid container main stackable blog" style="">
        <div class="twelve wide column pull-right main">

            <div class="ui segment article-content">
                <div class="extra-padding" style="padding-bottom:4px">
                    <h1>
                        <i class="icon newspaper"></i> 所有文章

                        <div class="ui secondary menu pull-right small" style="margin-top: -4px;">
                            <div class="ui item" style="font-size:13px;padding: 0px 4px;color: #777;">
                                文章排序：
                            </div>
                            <a class="ui item <?php echo e(in_array($request->type, ['', 'updated_at']) ? 'active' : '', false); ?> popover" data-content="按照时间排序" href="?type=updated_at" role="button">时间</a>
                            <a class="ui item <?php echo e($request->type == 'praise' ? 'active' : '', false); ?>  popover" data-content="按照点赞排序" href="?type=praise" role="button">点赞</a>
                        </div>

                    </h1>

                    <div class="ui divider"></div>

                    <div class="ui feed blog-article-list rm-link-color">

                        <?php if(count($data) > 0): ?>
                            <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="event">
                                <div class="content">
                                    <div class="summary">
                                        <a href="<?php echo e(url('article', [$val->id, $val->user_id]), false); ?>" class="title"> <?php echo e($val->title, false); ?> </a>
                                    </div>

                                    <div class="meta" style="line-height: 34px;">
                                        <div class="tags" style="    margin: -2px 0px 0px;margin-bottom: -8px;">
                                            <?php if(!empty($val->tags)): ?>
                                                <?php $__currentLoopData = $val->tags; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tag): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <a class="ui label small" href="javascript:;" style="margin-left: 0px !important;"><?php echo e($tag, false); ?></a>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <?php endif; ?>
                                        </div>

                                        <div class="date" style="font-size: 13px;margin: 7px 0em 0em;margin-left:0px">

                                            <?php if($val->category): ?>
                                            <a class="item">
                                                <img class="ui image display-inline-block mr-1" style="width:16px;height:16px;margin-top:-3px" src="<?php echo e($val->category->logo ? '/uploads/' . $val->category->logo : asset('blog/picture/laravel.png'), false); ?>">
                                                <?php echo e($val->category->name ? $val->category->name : '其他', false); ?>

                                            </a>
                                            <?php endif; ?>

                                            <span class="divider">|</span>

                                            <a class="" data-tooltip="<?php echo e($val->created_at, false); ?>">创建于  <span title=""><?php echo e($val->created_at->diffForHumans(), false); ?></span></a>

                                            <span class="divider">|</span>

                                            <?php if(!empty($val->updated_at)): ?>
                                            <a class="" data-tooltip="<?php echo e($val->created_at, false); ?>">更新于  <span title=""><?php echo e($val->updated_at->diffForHumans(), false); ?></span></a>
                                            <span class="divider">|</span>
                                            <?php endif; ?>

                                            <a href="javascript:;">阅读数 <?php echo e($val->view, false); ?></a>

                                            <span class="divider">|</span>

                                            <a href="javascript:;">评论数 <?php echo e($val->comment, false); ?></a>
                                        </div>
                                    </div>
                                </div>

                                <div class="item-meta">
                                    <a class="ui label basic light grey" href="javascript:;"><i class="thumbs up icon"></i> <?php echo e($val->praise, false); ?> </a>
                                    <a class="ui label basic light grey" href="<?php echo e(url('article', [$val->id, $val->user_id]), false); ?>"><i class="comment icon"></i> <?php echo e($val->comment, false); ?> </a>
                                </div>
                            </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php else: ?>
                            <div class="empty-block">
                                <a href="<?php echo e(url('release'), false); ?>" class="ui  green button">
                                    <i class="icon paint brush"></i>
                                    撰写文章
                                </a>
                            </div>
                        <?php endif; ?>
                    </div>

                    <?php if($data->lastPage() > 1): ?>
                        <div class="ui pagination menu stackable">
                            <?php echo e($data->links(), false); ?>

                        </div>
                    <?php endif; ?>
                </div>
            </div>

        </div>

        <div class="four wide column pull-left sidebar" style="padding-right: 0px;">
            <?php echo $__env->make('blog.article._article_user', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>

        <div class="clearfix"></div>
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.blog.blog', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/mr.bo/PHP/lmsail/resources/views/blog/blog.blade.php ENDPATH**/ ?>