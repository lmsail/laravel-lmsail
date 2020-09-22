

<?php $__env->startSection('title', $keyword . ' 的搜索结果'); ?>

<?php $__env->startSection('css'); ?>


<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="ui centered grid container stackable">

        <div class="four wide column remove padding">

            <div class="ui large vertical fluid pointing menu">

                <div class="header my-2 py-1">
                    <h2 class="fs-normal pl-3 pt-2 text-mute">分类：</h2>
                </div>

                <a class="item active" href="">
                    <div class="ui small label"><?php echo e($blogCount, false); ?></div>
                    博客
                </a>

                <a class="item " href="">
                    <div class="ui small label"><?php echo e($dynamicCount, false); ?></div>
                    动态
                </a>
            </div>

            <div class="ui large vertical fluid pointing menu">
                <div class="header my-2 py-1">
                    <h2 class="fs-normal pl-3 pt-2 text-mute">类型：</h2>
                </div>

                <a class="item" href="">
                    <i class="icon text-mute user"></i> 用户
                </a>
            </div>

        </div>
        <div class="twelve wide stretched column ">

            <div class="ui stacked segment">
                <div class="content px-3 py-3">

                    <h1 class="fs-large">
                        <img class="ui image mr-1" style="width:20px;height:20px;margin-top:-2px;display: inline-block;" src="<?php echo e(asset('uploads/' . config('base.logo')), false); ?>"> <?php echo e(config('base.web_name'), false); ?> 社区
                        <a class="ui popover" title="清除搜索范围" href=""><i class="icon remove red" aria-hidden="true"></i></a>
                        为您找到 <?php echo e($blogCount, false); ?> 条关于
                        <code class="search-keyword"><?php echo e($keyword, false); ?></code> 的内容
                    </h1>
                    <div class="ui divider mb-1"></div>
                    <div class="ui feed mt-0 pt-0 rm-link-color">

                        <?php $__currentLoopData = $blogList; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="event pt-3 pb-0 mb-0">
                            <div class="label mt-1" style="width: 3.2em;">
                                <a href="<?php echo e(url('blog', [$val->user->username, $val->user->id]), false); ?>">
                                    <img src="<?php echo e($val->user->avatar ? $val->user->avatar : asset('blog/picture/laravel.png'), false); ?>" alt="futian" style="border: 1px solid #ddd;padding: 2px;">
                                </a>
                            </div>
                            <div class="content ml-3" style="width:90%">
                                <div class="summary font-weight-normal" style="color: #555;">
                                    <a href="<?php echo e(url('article', [$val->id, $val->user->id]), false); ?>" class="title">
                                        <?php echo str_ireplace($keyword, '<span class="search-highlight">' . $keyword . '</span>', $val->title); ?>

                                        <i class="icon diamond ml-2 ui popover" title="已加精" style="color:#e87b58;" data-position="top center"></i>
                                    </a>
                                </div>

                                <div class=" mt-3 mb-3 lh-3 fs-normal text-mute">
                                    <?php echo e(str_limit($val->content, 240, '...'), false); ?>

                                </div>

                                <div class="meta mt-2 mb-2">
                                    <div class="tags" style=" margin: -2px 0px 0px;margin-bottom: -8px;"></div>
                                    <div class="date" style="font-size: 13px;margin: 7px 0em 0em;margin-left:0px">
                                        <a href="javascript:;">
                                            <i class="icon folder outline"></i> 博客
                                        </a>
                                        <span class="divider">|</span>
                                        <a class="" data-tooltip="2018-03-01 15:12:15">
                                            发布于 <span title="<?php echo e($val->created_at, false); ?>"><?php echo e($val->created_at->diffForHumans(), false); ?></span>
                                        </a>
                                        <span class="divider">|</span>
                                        <a>
                                            阅读 <?php echo e($val->view, false); ?>

                                        </a>
                                        <span class="divider">|</span>
                                        <a>
                                            评论 <?php echo e($val->comment, false); ?>

                                        </a>
                                    </div>
                                </div>
                            </div>

                            <div class="item-meta mt-2 text-right" style="color:#ccc;font-size: 12px;width: 150px;">
                                <a class="ui " href="javascript:;"><i class="mr-1 icon thumbs up"></i> <?php echo e($val->praise, false); ?> </a>
                                <?php if(strtotime($val->updated_at) > strtotime($val->created_at)): ?>
                                    <span style="margin: 0px 4px;text-align: center;font-size: 13px;">/</span>
                                    <a class="ui  popover" data-content="活跃于：<?php echo e($val->updated_at, false); ?>" href=""><?php echo e($val->updated_at->diffForHumans(), false); ?> </a>
                                <?php endif; ?>
                            </div>
                        </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                    </div>

                </div>
            </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.blog.blog', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /www/wwwroot/www.lmsail.com/resources/views/blog/search/search.blade.php ENDPATH**/ ?>