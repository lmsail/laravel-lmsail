<?php $__env->startSection('title', 'LmSail 社区专栏文章列表'); ?>

<?php $__env->startSection('css'); ?>
    <style>
        a.title {
            font-size: 20px!important;
            color: #000;
            margin-bottom: 10px
        }
    </style>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="ui centered grid container main" style="min-height: 500px;">
        <div class="sixteen wide column">

            <div class="ui segment">
                <h1 style="margin: 22px">
                    <i class="grey wikipedia text outline icon" style="font-size: 1.4em;"></i> <?php echo e($specialInfo->name, false); ?>

                </h1>

                <div class="ui message " style="margin: 22px;">
                    <p class="lh-3">
                        <?php echo e($specialInfo->description, false); ?>

                    </p>
                    <ul>
                        <li class="lh-4">收录《<?php echo e($specialInfo->name, false); ?>》相关文章，便于查看！</li>
                        <li class="lh-4">
                            <div class="extra">
                                <span style="font-weight:bold;font-size: 13px;margin-top: 18px;display: block;color: #5a5a5a;">
                                    专栏作者：
                                    <a href="">
                                        <img class="ui image avatar translator" src="http://www.blog.com/storage/8e364369943859b34c4539a4da69f9d6.jpeg"> 
                                        Mr.bo
                                    </a>
                                </span>
                            </div>
                        </li>
                    </ul>
                </div>

                <div class="pl-4 pr-4">
                    <div class="ui attached tabular menu" id="topics">
                        <a class="item active" href="">
                            <i class="grey content icon"></i>
                            文章列表
                        </a>
                    </div>

                    <div class="ui secondary menu" style="margin-bottom:40px;display: none">
                        <a class="item active" href="">活跃</a>
                        <a class="item " href="">精华</a>
                        <a class="item " href="">投票</a>
                        <a class="item " href="">最近</a>
                    </div>
        
                    <div class="ui divided feed">
                        
                        <?php if($list->total() == 0): ?>
                            <div class="text-center mt-lg-5 mb-lg-5">该专栏下暂未发表任何博文！！</div>
                        <?php endif; ?>

                        <?php $__currentLoopData = $list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="event">
                                <div class="label">
                                    <a href="">
                                        <img src="<?php echo e($val->user->avatar ? $val->user->avatar : asset('blog/picture/laravel.png'), false); ?>">
                                    </a>
                                </div>
                                <div class="content">
                                    <div class="date">
                                        <a href="<?php echo e(url('blog', [$val->user->username, $val->user->user_id]), false); ?>"><?php echo e($val->user->nickname, false); ?></a>
                                        在 <span title="<?php echo e($val->created_at, false); ?>"><?php echo e($val->created_at->diffForHumans(), false); ?></span>
                                        发布了
                                    </div>
        
                                    <div class="summary">
                                        <a href="<?php echo e(url('article', [$val->id, $val->user_id]), false); ?>" class="title"><?php echo e($val->title, false); ?></a>
                                    </div>
                                    
                                    <!--<div class="desc"><?php echo e($val->content, false); ?></div>-->
        
                                    <div class="topics-meta meta">
                                        <i class="thumbs up icon" style="font-size:1.2em"></i> <?php echo e($val->praise, false); ?> 个点赞 | <i class="talk icon"></i>  <?php echo e($val->comment, false); ?> 个回复
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                        <div class="ui pagination menu stackable">
                            <?php echo e($list->links(), false); ?>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.blog.blog', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /www/wwwroot/www.lmsail.com/resources/views/special/specialist.blade.php ENDPATH**/ ?>