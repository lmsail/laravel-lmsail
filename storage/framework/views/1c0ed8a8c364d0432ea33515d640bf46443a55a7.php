<div class="ui threaded comments comment-list ">

    <div class="ui secondary menu" style="margin-bottom:30px">
        <div class="ui item" style="font-size:14px;padding: 0px 4px;">
            排序：
        </div>
        <a class="ui item active popover" data-content="按照时间排序" href="javascript:;" role="button">时间</a>
        <!--<a class="ui item  popover" data-content="按照点赞排序" href="" role="button">点赞</a>-->
    </div>

    <?php $__currentLoopData = $comment; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="comments-feed">
            <div class="comment">
                <div id="reply18776" name="reply18776"></div>
                <div class="avatar">
                    <a href="">
                        <img src="<?php echo e($val->user->avatar ? $val->user->avatar : asset('blog/picture/laravel.png'), false); ?>">
                    </a>
                </div>

                <div class="content">
                    <div class="comment-header">
                        <div class="meta">
                            <a class="author" href="<?php echo e(url('blog', [$val->user->username, $val->user->user_id]), false); ?>">
                                <?php echo e($val->user->nickname, false); ?> <?php if($val->user->special == 1): ?> <i data-content="社区 `创建者` 与 `贡献者` 特殊标识" class="ui popover vimeo square icon" style="color: #FFB800;"></i> <?php endif; ?>
                                <div class="metadata">
                                    <span><a target="_blank" style="color: rgba(0,0,0,.5);" href="<?php echo e($val->user->personal_website, false); ?>">WebSite: <?php echo e($val->user->personal_website, false); ?></a></span>
                                </div>
                            </a>
                            <div class="metadata">
                            </div>
                        </div>
                        <div class="reaction">
                            <div class="ui floating basic icon dropdown button">
                                <a href="javascript:void(0)" onclick="replyOne('JokerLinly');" title="回复 JokerLinly" class="ui teal reply-btn"><i style="color:rgba(0, 0, 0, 0.3);" class="icon reply"></i></a>
                            </div>
                        </div>
                    </div>

                    <div class="text comment-body markdown-reply fluidbox-content">
                        <div class="px-3">
                            <?php echo analysis_face($val->content); ?>

                        </div>
                    </div>

                    <div class="" title="<?php echo e($val->created_at, false); ?>" style="background: #fff;padding: 15px;font-size: 12px;padding-top:0px;    color: rgba(0, 0, 0, 0.4);">
                        <i class="icon clock"></i> <?php echo e($val->created_at, false); ?>

                    </div>

                    <div class="footer">
                        <div class="ui menu reactions">
                            <a class="item reply-upvote ui popover" href="javascript:;" title="为此评论点赞" data-id="<?php echo e($val->id, false); ?>" data-uid="<?php echo e($val->user_id, false); ?>" style="color:rgba(0, 0, 0, 0.4);font-size: 0.9em;">
                                <i class="reaction-emoji icon thumbs up outline"></i> <span class="vote-count"><?php echo e($val->praise, false); ?></span>
                            </a>

                            <a class="item ui popover report-modal" data-content="举报违规内容，共建品质社区" href="javascript:$('.ui.modal').modal('show');" data-variation="inverted" style="color:rgba(0, 0, 0, 0.4);font-size: 0.9em;" data-contentid="18776" data-contenttype="App\Models\Reply" data-typename="评论">
                                <i class="icon flag outline"></i> 举报
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

    
    <?php if($comment->lastPage() > 1): ?>
        <div class="ui pagination menu stackable">
            <?php echo e($comment->links(), false); ?>

        </div>
    <?php endif; ?>
    

    
    <div class="ui segment extra-padding comment-composing-box pt-3" style="padding:20px;margin-left:60px">

        <?php if($errors->has('error')): ?>
            <div class="ui red message"><i class="exclamation circle icon"></i> <?php echo e($errors->first('error'), false); ?></div>
        <?php endif; ?>

        <?php if($errors->has('content')): ?>
            <div class="ui red message"><i class="exclamation circle icon"></i> <?php echo e($errors->first('content'), false); ?></div>
        <?php endif; ?>

        <?php if($errors->has('foreign_id')): ?>
            <div class="ui red message"><i class="exclamation circle icon"></i> <?php echo e($errors->first('foreign_id'), false); ?></div>
        <?php endif; ?>

        <?php if(Session::has('comment-success')): ?>
            <div class="reply ui message hide green basic" style="display: block;">√ <?php echo e(Session::get('comment-success'), false); ?></div>
        <?php endif; ?>

        <form method="POST" action="<?php echo e(url('comment'), false); ?>" accept-charset="UTF-8" class="ui form remove-localStorage-onsubmit">
            <?php echo csrf_field(); ?>
            <input type="hidden" name="foreign_id" value="<?php echo e($details->id, false); ?>">
            <div class="ui message info">
                <i class="icon info" aria-hidden="true"></i>请勿发布不友善或者负能量的内容。与人为善，比聪明更重要！
            </div>
            <div class="field">
                <textarea required name="content" rows="4" <?php if(auth()->guard()->guest()): ?> placeholder="登录后才可以发布评论哦" disabled="" <?php else: ?> id="comment-composing-box" placeholder="发表观点" <?php endif; ?> cols="30"></textarea>
            </div>

            <div class="field rm-link-color">
                <div class="pull-left meta">
                    <a href="javascript:;" class="mr-2 text-mute fs-big <?php if(auth()->guard()->guest()): ?> <?php else: ?> emoji-picker <?php endif; ?>" data-type="picker">
                        <i class="icon smile"></i>
                    </a>
                    <div class="face-list">
                        <?php $__currentLoopData = $face; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $v): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <a href="javascript:;" class="face-item" title="<?php echo e(face_imgname($v), false); ?>"><img src="<?php echo e(asset('/blog/face/' . $v), false); ?>" class="bbs-face"></a>
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
                    <span class="help-inline meta" style="margin-right:10px;display: none;"><span id="word-count">0</span> / 180</span>
                    <button class="ui button primary btn-sm" type="submit" <?php if(auth()->guard()->guest()): ?> disabled <?php endif; ?>>发布</button>
                </div>
                <div class="clearfix"></div>
            </div>

            <div id="dynamic-result" class="dynamic-result markdown-reply"></div>

        </form>

        <div class="clearfix"></div>
        <div class="box preview markdown-reply fluidbox-content" id="preview-box" style="display:none;border: dashed 1px #ccc;background: #ffffff;border-radius: 6px;box-shadow:none;margin-top: 20px;margin-bottom: 6px;"></div>
    </div>
    
</div><?php /**PATH /var/www/html/blog/resources/views/blog/article/_article_comment.blade.php ENDPATH**/ ?>