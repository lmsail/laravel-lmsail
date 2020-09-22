<div class="item header blog-article sidebar">

    <div class="ui card responsive" style="padding: 6px;">

        <div class="content">
            <a href="<?php echo e(url('blog', [$statistics['userinfo']->username, $statistics['userinfo']->id]), false); ?>" class="rm-link-color">
                <img class="ui circular image right floated image-44" src="<?php echo e($statistics['userinfo']->avatar ? $statistics['userinfo']->avatar : asset('blog/picture/laravel.png'), false); ?>">
            </a>
            <div class="header" style="line-height: 28px;margin-bottom: 5px;">
                <a href="<?php echo e(url('blog', [$statistics['userinfo']->username, $statistics['userinfo']->id]), false); ?>" class="rm-link-color" style="font-weight: bold;font-size: 15px;">
                    <?php echo e($statistics['userinfo']->nickname, false); ?> <?php if($statistics['userinfo']->special == 1): ?> <i data-content="社区 `创建者` 与 `贡献者` 特殊标识" class="ui popover vimeo square icon" style="color: #FFB800;"></i> <?php endif; ?>
                </a>
            </div>

            <div class="meta" style="font-size: 13px;">
                <?php echo e($statistics['userinfo']->username, false); ?> @ <?php echo e($statistics['userinfo']->email, false); ?>

            </div>
        </div>

        <div class="statistics" style="border-top: 1px solid rgba(0, 0, 0, 0.05);border-bottom: 1px solid rgba(0, 0, 0, 0.05);padding-bottom: 15px;padding-top: 10px;">
            <div class="ui four statistics">
                <div class="statistic ui popover" data-content="博客文章总数">
                    <div class="label" style="font-size: 1em!important;font-weight: normal;">
                        文章
                    </div>
                    <div class="value" style="font-size: 1em!important;font-weight: bold;">
                        <?php echo e($statistics['userinfo']->statistic->blognums, false); ?>

                    </div>
                </div>

                <div class="statistic ui popover" data-content="关注作者的用户数">
                    <div class="label" style="font-size: 1em!important;font-weight: normal;">
                        粉丝
                    </div>
                    <div class="value" style="font-size: 1em!important;font-weight: bold;">
                        <?php echo e($statistics['userinfo']->statistic->fans, false); ?>

                    </div>
                </div>

                <div class="statistic ui popover" data-content="收到了 <?php echo e($statistics['userinfo']->statistic->praise, false); ?> 个点赞">
                    <div class="label" style="font-size: 1em!important;font-weight: normal;">
                        喜欢
                    </div>
                    <div class="value" style="font-size: 1em!important;font-weight: bold;">
                        <?php echo e($statistics['userinfo']->statistic->praise, false); ?>

                    </div>
                </div>

                <div class="statistic ui popover" data-content="所有文章被收藏了 <?php echo e($statistics['userinfo']->statistic->collection, false); ?> 次">
                    <div class="label" style="font-size: 1em!important;font-weight: normal;">
                        收藏
                    </div>
                    <div class="value" style="font-size: 1em!important;font-weight: bold;">
                        <?php echo e($statistics['userinfo']->statistic->collection, false); ?>

                    </div>
                </div>

                <div class="clearfix"></div>
            </div>
        </div>

        <div class="ui two column grid text-center" style="padding: 15px">
            <div class="column ui popover" data-content="博客总访问量排行第 1 位 ">
                排名：1
            </div>
            <div class="column ui popover" data-content="博客总访问量 <?php echo e($statistics['userinfo']->statistic->view, false); ?>（每日更新）" style="padding-left:0px">
                访问：<?php echo e($statistics['userinfo']->statistic->view, false); ?>

            </div>
        </div>

        <div class="extra content">

            <div class="two ui basic buttons" style="margin-top: 4px;">
                
                
                

                <button class="ui  button small follow ui popover active primary visible" data-content="关注后此博客的新文章会在首页动态里显示" data-act="unfollow" data-id="1">
                    <i class="icon plus"></i> <span class="state">关注</span>
                </button>

                <a href="" class="ui button small ">
                    <i class="icon envelope"></i> 私信
                </a>
            </div>
        </div>

    </div>

    <a href="<?php echo e(url('blog', [$statistics['userinfo']->username, $statistics['userinfo']->id]), false); ?>" class="ui basic button fluid" style="background: white!important;margin-top:18px;display: none">
        <i class="icon newspaper"></i>
        Ta 的博客首页
    </a>

    <?php if(!empty($statistics['archive'])): ?>
    <div class="ui card tag-active-user-card popular-card responsive">
        <div class="content">
            <span class="">文章归档</span>

            <a href="<?php echo e(url('blog', [$statistics['userinfo']->username, $statistics['userinfo']->id]), false); ?>" class="rm-link-color pull-right ui popover" style="font-size: 15px;margin-right: 8px;" data-content="所有文章">
                <i class="icon newspaper"></i>
            </a>
        </div>
        <div class="extra content ">
            <div class="ui list readmore" style="padding:8px">
                <?php $__currentLoopData = $statistics['archive']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $archive): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <a class="item" href="" style="line-height: 22px;">
                        <span class=" pull-right" style="color:inherit"><?php echo e($archive->total, false); ?> 篇</span>
                        <?php echo e($archive->month, false); ?>

                    </a>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
    </div>
    <?php endif; ?>

    <div class="ui card tag-active-user-card popular-card responsive" style="font-size: 13px;">
        <div class="ui secondary pointing menu" style="margin-bottom: 5px;border-bottom: 2px solid rgba(34, 36, 38, 0.1);">
            <a class="item active" data-tab="first">最新文章</a>
            <a class="item" data-tab="second">最受欢迎</a>
        </div>
        <div class="ui bottom attached tab active" data-tab="first">

            <div class="ui middle aligned divided  list" style="padding: 0px 15px;margin-top: 0px;margin-bottom: 5px;">
                <?php if(count($statistics['newblog']) > 0): ?>
                    <?php $__currentLoopData = $statistics['newblog']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <a class="item" href="<?php echo e(url('article', [$val->id, $val->user_id]), false); ?>">
                            <span class="ui label tiny"><?php echo e($val->created_at->diffForHumans(), false); ?> </span>
                            <?php echo e($val->title, false); ?>

                        </a>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php else: ?>
                    <div class="empty-blog" style="padding: 10px 0;">还木有发布文章哦</div>
                <?php endif; ?>
            </div>
        </div>
        <div class="ui bottom attached tab" data-tab="second">
            <div class="ui middle aligned divided  list" style="padding: 0px 15px;margin-top: 0px;">
                <?php if(count($statistics['niceblog']) > 0): ?>
                    <?php $__currentLoopData = $statistics['niceblog']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <a class="item" href="<?php echo e(url('article', [$val->id, $val->user_id]), false); ?>">
                            <span class="ui label tiny"><i class="thumbs up icon"></i> <?php echo e($val->praise, false); ?> </span>
                            <?php echo e($val->title, false); ?>

                        </a>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php else: ?>
                    <div class="empty-blog" style="padding: 10px 0;">还木有发布文章哦</div>
                <?php endif; ?>
            </div>
        </div>
    </div>

    
    <div class="ui card tag-active-user-card blog-tags responsive">
        <div class="content">
            <span class="">博客标签</span>
        </div>
        <div class="extra content readmore" style="    padding-bottom: 18px;">
            <a class="ui label basic" href="">
                laravel
                <div class="detail">1</div>
            </a>
        </div>
    </div>

    
    <div style="margin-top:-20px" class="hide-on-mobile">
        <div class="ui toc sticky" style="padding-top: 20px; width: 280px !important; height: 216px !important;">
            <div class="ui card column author-box grid  tocify" id="toc"></div>
        </div>
    </div>

    <div class="catalog"></div>

</div>

<?php /**PATH /Users/mr.bo/PHP/lmsail/resources/views/blog/article/_article_user.blade.php ENDPATH**/ ?>