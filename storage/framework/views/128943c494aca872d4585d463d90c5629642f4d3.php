

<?php $__env->startSection('title', '关于我'); ?>

<?php $__env->startSection('css'); ?>

    <style>
        .ui.grid>.column:not(.row) {
            padding-top: 0
        }
        .ui.segment {
            margin: 0;
            padding: 0 1em;
        }
        .ui.card, .ui.cards>.card {
            box-shadow: 0 0 0 #000
        }
        ul li {
            line-height: 25px;
            letter-spacing: 1px;
        }
    </style>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="ui centered grid container main stackable">
        <div class="four wide column">
            <div class="ui card">
                <a class="image" href="#link">
                    <img src="/uploads/<?php echo e(config('author.avatar'), false); ?>">
                </a>
                <div class="content">
                    <a class="header" href="#link"><?php echo e(config('author.author'), false); ?> <i class="icon mars"></i></a>
                    <div class="meta" style="color: #636b6f">
                        <div class="my-2">
                            <i class="icon suitcase" style="color:#a5a5a5"></i>  站长 <?php echo e(config('author.contact_email'), false); ?>

                        </div>

                        <div class="my-2">
                            <i class="icon marker" style="color:#a5a5a5"></i> <?php echo e(config('author.city'), false); ?>

                        </div>

                        <div class="my-2">
                            <a href="<?php echo e(config('author.website'), false); ?>" rel="nofollow" target="_blank" class="url">
                                <i class="icon linkify" style="color:#a5a5a5"></i> <?php echo e(config('author.website'), false); ?>

                            </a>
                        </div>
                    </div>
                </div>
            </div>

            
            <div class="social rm-link-color mt-2 my-3 p-3" style="background: #fff;box-shadow: 0 1px 3px 0 #e3eaefe0, 0 0 0 1px #e1e7ea;">

                <p class="fw-bold" style="font-size:0.9em;color:#a5a5a5;">社交账号：</p>
                <a href="<?php echo e(config('author.github'), false); ?>" target="_blank">
                    <i style="color:#a5a5a5;font-size:1.2em" class="icon github alternate"></i>
                </a>
              
                <a href="<?php echo e(config('author.weibo'), false); ?>" rel="nofollow" class="weibo" target="_blank">
                    <i style="color:#a5a5a5;font-size:1.2em" class="icon weibo"></i>
                </a>
              
                <span class="ui popover" data-html="<img src='/uploads/<?php echo e(config('author.weixin'), false); ?>' style='width:100%'>">
                    <i style="color:#a5a5a5;font-size:1.2em" class="icon wechat"></i>
                </span>
              
                <a href="<?php echo e(config('author.twitter'), false); ?>" rel="nofollow" class="twitter" target="_blank">
                    <i style="color:#a5a5a5;font-size:1.2em" class="icon twitter"></i>
                </a>
              
                <a href="<?php echo e(config('author.linkedin'), false); ?>" rel="nofollow" class="linkedin" target="_blank">
                    <i style="color:#a5a5a5;font-size:1.2em" class="icon linkedin"></i>
                </a>
            </div>
        </div>

        
        <div class="twelve wide column" style="background: #fff">
            <div class="ui pointing secondary menu pt-3">
                <a class="item active" data-tab="aboutme">关于我(简历)</a>
                <a class="item" data-tab="project">开源项目</a>
            </div>

            
            <div class="ui tab active" data-tab="aboutme">
                <div class="p-3" id="aboutme">
                    <?php if(!empty($content)): ?> <?php echo $content; ?> <?php else: ?> 站长未设置 <?php endif; ?>
                </div>                
            </div>

            
            <div class="ui tab" data-tab="project">
                <div class="ui two column grid mt-3">
                    <div class="column">
                        <div class="ui segment">
                            <div class="card ui cards">
                                <div class="content">
                                    <div class="header">Laravel-lmsail</div>
                                    <div class="meta">Laravel5、博客系统</div>
                                    <div class="description">LmSail社区是基于Laravel5.8开发的支持Markdown语法的开源博客系统，后端采用laravel-admin！</div>
                                </div>
                                <div class="extra content">
                                    <a href="https://github.com/MarichMarck/laravel-lmsail" target="_blank" class="right floated"><i class="linkify icon"></i>Github</a>
                                    <span style="color: #586069">
                                        <!--<a class="ui empty circular label" style="background: #4F5D95"></a> -->
                                        <img src="http://www.lmsail.com/uploads/images/Y7fElYYwCFjTTXCdwPNW.png" width="15" style="margin-top: -5px;"> PHP
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="column">
                        <div class="ui segment">
                            <div class="card ui cards">
                                <div class="content">
                                    <div class="header">gin-ginApi</div>
                                    <div class="meta">gin、Api接口服务</div>
                                    <div class="description">ginApi是基于gin框架开发的Api接口服务！目前该项目正处于慢慢开发中，也是对学习Go语言的初步了解！</div>
                                </div>
                                <div class="extra content">
                                    <a href="https://github.com/MarichMarck/ginApi" target="_blank" class="right floated"><i class="linkify icon"></i>Github</a>
                                    <span style="color: #586069">
                                        <!--<a class="ui empty circular label" style="background: #368cda"></a> Golang-->
                                        <img src="http://www.lmsail.com/uploads/images/sNljssWWQoW6J88O9G37.png" width="15" style="margin-top: -5px;"> Golang
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="column">
                        <div class="ui segment">
                            <div class="card ui cards">
                                <div class="content">
                                    <div class="header">scrapy爬虫</div>
                                    <div class="meta">scrapy、BeautifulSoup，requests</div>
                                    <div class="description">一个新手的Scrapy练手的项目，抓取某商城商品数据，一个半成品，有空完善下，可以供简单学习用！</div>
                                </div>
                                <div class="extra content">
                                    <a href="https://gitee.com/www.chinarbq.com/scrapy_novice_crawler_project" target="_blank" class="right floated"><i class="linkify icon"></i>Gitree</a>
                                    <span style="color: #586069">
                                        <!--<a class="ui empty circular label" style="background: #368cda"></a> Python-->
                                        <img src="http://www.lmsail.com/uploads/images/mTBLIP7o0gVGn3ZCphpN.png" width="15" style="margin-top: -5px;"> Python
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>
    <script>
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.blog.blog', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /www/wwwroot/www.blog.com/resources/views/blog/pages/aboutme.blade.php ENDPATH**/ ?>