

<?php $__env->startSection('title', '博文列表'); ?>

<?php $__env->startSection('css'); ?>
    <style>
        .blog.grid.container.main {
            display: block;
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
        .title {
            font-size: 18px!important;
        }
        .ui.grid>.column:not(.row) {
            padding-top: 0;
        }
        .tags a {
            font-weight: 400!important;
            color: #887230!important;
            padding: 5px!important;
            background-color: #ffefc6!important;
        }
        .extra-padding {
            padding: 0 20px
        }
    </style>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="four wide column remove">

        <div class="ui large vertical fluid pointing menu" style="margin-top: -0.35rem">
            <div class="header my-2 py-1 pt-3">
                <h2 class="fs-normal pl-3 text-mute">博客分类：</h2>
            </div>

            <a class="item <?php if(!$request->cateid): ?> active <?php endif; ?>" href="<?php echo e(url('list'), false); ?>">
                <i class="envira icon"></i> 所有博文
            </a>
            
            <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <a class="item <?php if($request->cateid == $val->id): ?> active <?php endif; ?>" href="<?php echo e(route('list', ['cateid' => $val->id]), false); ?>">
                <div class="ui small label"><?php echo e($val->post_count, false); ?></div>
                <img class="ui image display-inline-block mr-3" style="width:16px;height:16px;margin-top:-3px" src="<?php echo e($val->logo ? '/uploads/' . $val->logo : asset('blog/picture/laravel.png'), false); ?>">
                <?php echo e($val->name, false); ?>

            </a>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>

        
         <div class="ui large vertical fluid pointing menu">
            <div class="header my-2 py-1 pt-3">
                <h2 class="fs-normal pl-3 text-mute">标签云</h2>
            </div>
            <div class="tags p-3" style="margin: -2px 0px 0px;margin-bottom: -8px;">
                <?php $__currentLoopData = $tags; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <a class="ui label small mb-2" href="<?php echo e(url('search'), false); ?>?q=<?php echo e($val, false); ?>" style="margin-left: 0px !important;"><?php echo e($val, false); ?></a>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
    </div>

    <div class="twelve wide column">

        <div class="ui segment article-content">
            <div class="extra-padding" style="padding-bottom:4px">
                <h1>
                    <i class="icon newspaper"></i> 博文列表
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
                                                    <a class="ui label small" href="" style="margin-left: 0px !important;"><?php echo e($tag, false); ?></a>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <?php endif; ?>
                                        </div>

                                        <div class="date" style="font-size: 13px;margin: 7px 0em 0em;margin-left:0px">
                                            <?php if($val->category): ?>
                                            <a class="item" href="javascript:;">
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
                                    <a class="ui label basic light grey topic-vote ui" data-id="<?php echo e($val->id, false); ?>" data-uid="<?php echo e($val->user_id, false); ?>" data-type="2" href="javascript:;"><i class="thumbs up icon outline"></i> <span class="vote-count"><?php echo e($val->praise, false); ?></span> </a>
                                    <a class="ui label basic light grey" href="<?php echo e(url('article', [$val->id, $val->user_id]), false); ?>"><i class="comment icon"></i> <?php echo e($val->comment, false); ?> </a>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php else: ?>
                        <div class="text-center mb-3"><i class="meh outline icon"></i> 该分类还木有发表任何文章哦！</div>
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

    <div class="clearfix"></div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.blog.blog', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/mr.bo/PHP/lmsail/resources/views/blog/article/list.blade.php ENDPATH**/ ?>