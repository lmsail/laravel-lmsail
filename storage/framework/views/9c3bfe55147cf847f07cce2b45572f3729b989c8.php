

<?php $__env->startSection('title', '动态列表'); ?>

<?php $__env->startSection('css'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('at/css/jquery.atwho.css'), false); ?>">
    <style>.face-list{height: 220px;}.comment{display:none;margin-bottom:10px;border:1px solid #ebebeb;border-radius:4px;box-shadow:0 1px 3px rgba(26,26,26,.1)}.comment_list{position:relative;clear:both;overflow:hidden;margin-top:-1px;padding:10px 0 0;zoom:1}#comment_list dt{float:left;border:none;background:0 0}#comment_list dt,#comment_list dt a,#comment_list dt img{overflow:hidden;margin:0;padding:0;width:20px;height:20px}#comment_list dt a,#comment_list dt img{display:block;border-radius:50%}.comment_list dd{margin-inline-start:30px}.comment_list dd a{color:#1a1a1a!important}.comment_list dd .cont{margin:0;width:100%;line-height:20px}.cont em a {color: #f4645f!important;}.comment_list em{color:#1a1a1a;font-style:normal;font-size:10pt}.Topbar{display:-webkit-box;display:-ms-flexbox;display:flex;margin-bottom:10px!important;padding:0;padding:0 20px;height:40px;border-bottom:1px solid #f6f6f6;background:#fff;-webkit-box-pack:justify;-ms-flex-pack:justify;justify-content:space-between;-webkit-box-align:center;-ms-flex-align:center;align-items:center}.reply-content{padding:0 15px 10px}.field .reply-textarea{height:40px!important;max-height:24em!important;min-height:40px!important;border:1px solid #8590a6;border-radius:3px;resize:none!important}.focus{border:1px solid #eee!important;background-color:#f6f6f6!important;color:#000!important}.reply-textarea::-webkit-scrollbar{width:0;height:0}</style>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="twelve wide column">

        <div class="ui segment px-4">

            <div class="mb-3 mt-0">
                <a class="rm-link-color" href="">
                    <img class="ui image inline mr-2" style="width:20px;height:20px;margin-top:-2px;" src="<?php echo e(asset('blog/picture/laravel.png'), false); ?>"> <?php echo e(config('lmsail.web_name'), false); ?>动态
                </a>
            </div>

            <!-- Reply Box -->
            <div class="ui form">

                <form method="POST" action="" accept-charset="UTF-8" id="tweet-create-form" class="ui form remove-localStorage-onsubmit">
                    <?php echo csrf_field(); ?>
                    <div class="field">
                        <textarea rows="4" maxlength="180" <?php if(auth()->guard()->guest()): ?> placeholder="登录后才可以发动态哦" disabled="" <?php else: ?> id="comment-composing-box" placeholder="今天想说点啥" <?php endif; ?> cols="30"></textarea>
                    </div>
                    <div class="error-msg" id="error"></div>

                    <div class="field rm-link-color">
                        <div class="pull-left meta">
                            <a href="javascript:;" class="mr-2 text-mute fs-big <?php if(auth()->guard()->guest()): ?> <?php else: ?> emoji-picker <?php endif; ?>" data-type="picker">
                                <i class="icon smile"></i>
                            </a>
                            <div class="face-list">
                                <?php $__currentLoopData = $face; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $v): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <a href="javascript:;" class="face-item" title="<?php echo e(face_imgname($v), false); ?>"><img src="<?php echo e(env('APP_URL') . '/blog/face/' . $v, false); ?>" class="bbs-face"></a>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>

                            <a href="javascript:;" class="mr-2 text-mute ui popover" data-html="黏贴或拖拽图片至输入<br>框内皆可上传图片">
                                <i class="icon picture"></i>
                            </a>
                            <a href="javascript:;" class="mr-2 text-mute ui popover" data-html="支持 Markdown 语法">
                                支持 MD
                            </a>
                        </div>
                        <div class="pull-right">
                            <span class="help-inline meta" style="margin-right:10px"><span id="word-count">0</span> / 180</span>
                            <button class="ui button primary btn-sm disabled" type="button" <?php if(auth()->guard()->guest()): ?> user-id="" <?php else: ?> id="send" user-id="<?php echo e(Auth::user()->id, false); ?>" <?php endif; ?>>发布</button>
                        </div>
                        <div class="clearfix"></div>
                    </div>

                    <div id="dynamic-result" class="dynamic-result markdown-reply"></div>

                </form>
                <div class="clearfix"></div>
                <div class="box preview markdown-reply fluidbox-content" id="preview-box" style="display:none;border: dashed 1px #ccc;background: #ffffff;border-radius: 6px;box-shadow:none;margin-top: 20px;margin-bottom: 6px;"></div>
            </div>
        </div>
        
        <div class="ui segment  px-3 py-3">

            <div class="ui feed rm-link-color">

                <?php if(count($data) <= 0): ?>
                    <div class="text-center mt-lg-5">抢占沙发，Go Go Go！！</div>
                <?php endif; ?>

                <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="event pt-4 pb-0 px-3">
                    <div class="label">
                        <img class="media-object img-thumbnail avatar image-border" src="<?php echo e($val->user->avatar ? $val->user->avatar : asset('blog/picture/laravel.png'), false); ?>"  style="width:44px;height:44px;"/>
                    </div>
                    <div class="content ml-4">
                        <div class="summary">
                            <a href="<?php echo e(url('blog', [$val->user->username, $val->user->id]), false); ?>"><?php echo e($val->user->nickname, false); ?></a>
                            <?php if($val->user->special == 1): ?> <i data-content="社区 `创建者` 与 `贡献者` 特殊标识" class="ui popover vimeo square icon" style="color: #FFB800;"></i> <?php endif; ?>
                            <div class="date">
                                <?php echo e($val->created_at->diffForHumans(), false); ?>

                            </div>
                            <?php if(Auth::id() == $val->user_id): ?>
                            <div class="pull-right">
                                <div class="ui labeled icon top right pointing dropdown">
                                    <span class="down-loading"><i class="angle down icon"></i></span>
                                    <div class="menu">
                                        <div class=""></div>
                                        <div class="header"><i class="tasks icon"></i> 更多操作 </div>
                                        <div class="item" data-id="<?php echo e($val->id, false); ?>" onclick="dynamicdel(this);"><i class="orange circle icon"></i> 删除（delete） </div>
                                    </div>
                                </div>
                            </div>
                            <?php endif; ?>
                        </div>
                        <div class="extra text">
                            <div class="media-body markdown-reply fluidbox-content mt-3">
                                <p><?php echo analysis_face($val->content); ?></p>
                            </div>
                        </div>
                        <div class="meta">
                            <div class="ui horizontal list tweet-operations mb-2" style="margin-bottom: 0px;">
                                <a class="item ui topic-vote ui" data-id="<?php echo e($val->id, false); ?>" data-uid="<?php echo e($val->user->id, false); ?>" data-type="1" href="javascript:;" title="Vote Up" >
                                    <div class="top aligned content">
                                        <i class="icon thumbs up outline"></i> <span class="count vote-count"><?php echo e($val->praise, false); ?></span>
                                    </div>
                                </a>
                                <a class="item ui" onclick="comments(this, <?php echo e($val->id, false); ?>);" href="javascript:;">
                                    <div class="top aligned content">
                                        <i class="icon comments outline"></i> <span class="state" id="state-total-<?php echo e($val->id, false); ?>"><?php echo e($val->comment, false); ?></span>
                                    </div>
                                </a>
                                <a class="item ui popover login_required" href="javascript:/*$('.ui.modal').modal('show')*/;" data-variation="inverted" data-content="举报违规内容，共建品质社区">
                                    <div class="top aligned content">
                                        <i class="icon flag outline"></i> 举报
                                    </div>
                                </a>
                            </div>
                        </div>

                        
                        <div class="comment comment-<?php echo e($val->id, false); ?>">
                            <div class="Topbar">
                                <div class="Topbar-title">
                                    <h2 class="CommentTopbar-title"><span id="comment-total-<?php echo e($val->id, false); ?>"><?php echo e($val->comment, false); ?></span> 条评论 <small>（以下取最新的15条评论）</small></h2>
                                </div>
                            </div>
                            <div class="reply-content">

                                <div class="reply-content<?php echo e($val->id, false); ?>" id="reply-content<?php echo e($val->id, false); ?>">
                                    <div class="loading mt-lg-5 mb-lg-5" id="loading-<?php echo e($val->id, false); ?>" style="text-align: center"><i class="spinner icon loading"></i> 数据加载中...</div>
                                </div>

                                <script type="text/template" id="dynamic-comment-<?php echo e($val->id, false); ?>">
                                    
                                    {{ for(var prop in it) { }}
                                    <dl class="comment_list" id="comment_list">
                                        <dt>
                                            <a href="blog/{{=it[prop]['user']['username'] }}/{{=it[prop]['user']['id'] }}">
                                                <img width="20" height="20" src="{{=it[prop]['user']['avatar'] }}" onerror="this.src='/blog/picture/laravel.png'">
                                            </a> 
                                        </dt>
                                        <dd>
                                            <p class="cont">
                                                <a href="blog/{{=it[prop]['user']['username'] }}/{{=it[prop]['user']['id'] }}" target="_blank" uid="{{=it[prop]['user']['id'] }}">
                                                    {{=it[prop]['user']['nickname'] }}{{? it[prop]['user']['special'] == 1}}<i class="vimeo square icon" style="color: #FFB800;"></i>{{?}}:
                                                </a>
                                                <em>{{=it[prop]['content'] }} <span class="time" style="color: #999">（{{=it[prop]['created_at'] }}）</span></em>
                                            </p>
                                        </dd>
                                    </dl>
                                    {{?}}
                                    
                                </script>

                                <div class="reply field">
                                    <div class="ui grid">
                                        <div class="thirteen wide column" style="padding: 10px 0;width: 85.5%!important;">
                                            <textarea class="reply-textarea focus" style="resize: none" id="reply-textarea-<?php echo e($val->id, false); ?>" placeholder="我来说一句..."></textarea>
                                            <i class="smile icon ui popover" data-html="支持插入表情，但我还没写好^_^" style="position: absolute;right: 10px;bottom: 20px;font-size: 20px;cursor: pointer"></i>
                                        </div>
                                        <div class="three wide column" style="position: relative;width: 14.5%!important;">
                                            <?php if(auth()->guard()->guest()): ?>
                                                <button class="ui primary button" disabled style="position: absolute;bottom: 12px;">发布</button>
                                            <?php else: ?>
                                                <button class="ui primary button" onclick="addComment(this, <?php echo e($val->id, false); ?>)" style="position: absolute;bottom: 12px;">发布</button>
                                            <?php endif; ?>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <!-- 分页 -->
                <div class="ui pagination menu stackable">
                    <?php echo e($data->links(), false); ?>

                </div>
            </div>
        </div>
    </div>

    <div class="four wide column">
        <div class="ui card responsive tweets">
            <div class="content">
                <div class="header">
                    <i class="icon twitch"></i> 热门动态
                </div>
            </div>

            <div class="content main pt-0">
                <div class="ui feed rm-link-color pt-0 mt-0">

                    <?php if(count($hot) <= 0): ?>
                        <div class="text-center mt-lg-5 mb-lg-5">抢占沙发，Go Go Go！！</div>
                    <?php endif; ?>

                    <?php $__currentLoopData = $hot; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $h_val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="event pt-3 pb-0 px-1">
                        <div class="label">
                            <img class="media-object img-thumbnail avatar" src="<?php echo e($h_val->user->avatar ? $h_val->user->avatar : asset('blog/picture/laravel.png'), false); ?>"  style="width:32px;height:32px;"/>
                        </div>
                        <div class="content ml-2 mb-2">
                            <div class="summary">
                                <a href="<?php echo e(url('blog', [$h_val->user->username, $h_val->user->id]), false); ?>"><?php echo e($h_val->user->nickname, false); ?></a>
                                <?php if($h_val->user->special == 1): ?> <i data-content="社区 `创建者` 与 `贡献者` 特殊标识" class="ui popover vimeo square icon" style="color: #FFB800;"></i> <?php endif; ?>
                                <div class="date">
                                    <?php echo e($h_val->created_at->diffForHumans(), false); ?>

                                </div>
                            </div>
                            <div class="extra text">
                                <div class="media-body markdown-reply mt-2 fluidbox-content text-overflow">
                                    <p><?php echo analysis_face($h_val->content); ?></p>
                                    <div class="show-more" title="点击查看更多内容">阅读更多 <i class="icon angle double down"></i></div>
                                </div>
                            </div>

                            <div class="meta">
                                <a href="" class="action"><?php echo e($h_val->created_at->diffForHumans(), false); ?></a>
                                <a class="topic-vote ui action login_required" data-id="<?php echo e($h_val->id, false); ?>" data-uid="<?php echo e($h_val->user->id, false); ?>" data-type="1" href="javascript:;" title="Vote Up" >
                                    <i class="icon thumbs up outline"></i> <span class="count vote-count"><?php echo e($h_val->praise, false); ?></span>
                                </a>
                                <a href="javascript:;" class="action"><i class="icon comments outline"></i> <span class="count"><?php echo e($h_val->comment, false); ?></span></a>
                            </div>
                        </div>
                    </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>
    <script>var face_path = "<?php echo e(env('APP_URL'), false); ?>", dynamic_path = "<?php echo e(url('sendDynamic'), false); ?>", delpath = "<?php echo e(url('deldynamic'), false); ?>", commentPath = "<?php echo e(url('api/comments'), false); ?>", addcommentPath = "<?php echo e(url('api/addcomment'), false); ?>";</script>
    <script src="<?php echo e(asset('blog/js/doT.min.js'), false); ?>"></script>
    <script src="<?php echo e(asset('blog/js/paste-upload-image.js'), false); ?>"></script>

    
    <script src="<?php echo e(asset('at/js/jquery.atwho.js'), false); ?>"></script>
    <script src="<?php echo e(asset('at/js/jquery.caret.js'), false); ?>"></script>
    <script>
        makeExpandingArea(document.getElementById('comment-composing-box'));
        // 图片拖拽上传
        $("#comment-composing-box").pasteUploadImage("<?php echo e(url('api/upload'), false); ?>");
        $('.ui.feed').find("p>img").not(".emoji").click(function() {
            var imgsrc = $(this).attr("src");
            $("#img-show").fadeIn().find("#img-html").html("<img src='"+imgsrc+"'>");
        });
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.blog.blog', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /www/wwwroot/www.blog.com/resources/views/dynamic/index.blade.php ENDPATH**/ ?>