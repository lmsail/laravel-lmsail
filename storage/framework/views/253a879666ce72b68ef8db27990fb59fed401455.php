

<?php $__env->startSection('title', '编辑个人资料'); ?>

<?php $__env->startSection('css'); ?>
    <style>
        .ui.grid>* {
            padding-left: 0;
            padding-right: 0;
        }
        .red {
            padding-top: 5px;
            color: red;
        }
    </style>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="ui centered grid container stackable">
        <div class="four wide column ">
            <div class="content px-3 py-3 ui fluid large vertical pointing menu text-center">

                <form class="ui form" id="user-form" method="POST" action="<?php echo e(url('users/edit'), false); ?>" enctype="multipart/form-data" accept-charset="UTF-8">
                    <h1 class="text-left pt-4"> <i class="icon image" aria-hidden="true"></i> 修改头像 </h1>
                    <div class="ui divider"></div>
                    <?php echo csrf_field(); ?>
                    <div id="image-preview-div">
                        <img id="preview-img" class="avatar-preview-img" src="<?php echo e(Auth::user()->avatar ? Auth::user()->avatar : asset('blog/picture/laravel.png'), false); ?>" width="50%">
                    </div>

                    <div class="mt-3">
                        <a class="item ui popover login_required" href="javascript:$('#file').click();" data-variation="inverted" data-content="点击上传头像">
                            <div class="top aligned content">
                                <i class="arrow alternate circle up outline icon"></i> 点我上传头像
                            </div>
                        </a>
                    </div>

                    <div class="filed">
                        <input type="file" name="avatar" id="file" style="opacity: 1;position: fixed;left: -999px;" required="">
                    </div>

                    <div class="filed mt-3 pb-3">
                        <button class="ui button primary" id="upload-button" type="submit" onclick="$('#user-form').submit()">上传头像</button>
                    </div>
                    <?php if($errors->has('avatar')): ?>
                        <div class="ui red message"><?php echo e($errors->first('avatar'), false); ?></div>
                    <?php endif; ?>
                </form>
            </div>
        </div>
        <div class="twelve wide column">
            <div class="ui stacked segment">
                <div class="content px-3 py-3">
                    <h1><i class="icon edit" aria-hidden="true"></i> 修改资料</h1>
                    <div class="ui divider"></div>

                    <?php if($errors->has('error')): ?>
                        <div class="ui red message"><?php echo e($errors->first('error'), false); ?></div>
                    <?php endif; ?>

                    <?php if(Session::has('success')): ?>
                        <div class="ui green message"><i class="check circle icon"></i> <?php echo e(Session::get('success'), false); ?></div>
                    <?php endif; ?>

                    <form class="ui form" method="POST" action="<?php echo e(url('users/edit'), false); ?>" accept-charset="UTF-8">

                        <?php echo csrf_field(); ?>
                        <input type="hidden" name="edit-type" value="edit-user-info">

                        <div class="two fields">
                            <div class="ten wide field ">
                                <label for="">昵称</label>
                                <input name="nickname" type="text" value="<?php echo e($userInfo->nickname, false); ?>">
                                <?php if($errors->has('nickname')): ?>
                                    <div class="red"><i class="info circle icon"></i> <?php echo e($errors->first('nickname'), false); ?></div>
                                <?php endif; ?>
                            </div>
                            <div class="six wide field pt-3 mt-4">
                                用户名只能修改一次，请谨慎操作
                            </div>
                        </div>

                        <div class="two fields">
                            <div class="ten wide field ">
                                <label for="">性别</label>
                                <select name="sex" class="ui dropdown">
                                    <option value="2" <?php echo e($userInfo->sex == 2 ? 'selected' : '', false); ?>>保密</option>
                                    <option value="0" <?php echo e($userInfo->sex == 0 ? 'selected' : '', false); ?>>女</option>
                                    <option value="1" <?php echo e($userInfo->sex == 1 ? 'selected' : '', false); ?>>男</option>
                                </select>
                                <?php if($errors->has('sex')): ?>
                                    <div class="red"><i class="info circle icon"></i> <?php echo e($errors->first('sex'), false); ?></div>
                                <?php endif; ?>
                            </div>
                        </div>

                        <div class="two fields">
                            <div class="ten wide field ">
                                <label for="">邮 箱</label>
                                <input name="email" type="text" value="<?php echo e($userInfo->email, false); ?>">
                                <?php if($errors->has('email')): ?>
                                    <div class="red"><i class="info circle icon"></i> <?php echo e($errors->first('email'), false); ?></div>
                                <?php endif; ?>
                            </div>
                            <div class="six wide field pt-3 mt-4">
                                如：name@website.com
                            </div>
                        </div>

                        <div class="two fields">
                            <div class="ten wide field ">
                                <label for="">个人网站</label>
                                <input name="personal_website" type="text" value="<?php echo e($userInfo->personal_website, false); ?>">
                                <?php if($errors->has('personal_website')): ?>
                                    <div class="red"><i class="info circle icon"></i> <?php echo e($errors->first('personal_website'), false); ?></div>
                                <?php endif; ?>
                            </div>
                            <div class="six wide field pt-3 mt-4">
                                需要加前缀 https:// or http://
                            </div>
                        </div>

                        <div class="two fields">
                            <div class="ten wide field ">
                                <label for="">个人简介</label>
                                <textarea rows="3" name="introduction" cols="50" style="overflow: hidden; overflow-wrap: break-word; resize: none; height: 96px;"><?php echo e($userInfo->introduction, false); ?></textarea>
                                <?php if($errors->has('introduction')): ?>
                                    <div class="red"><i class="info circle icon"></i> <?php echo e($errors->first('introduction'), false); ?></div>
                                <?php endif; ?>
                            </div>
                            <div class="six wide field pt-3 mt-4">
                                请一句话介绍你自己
                            </div>
                        </div>

                        <div class="two fields">
                            <div class="ten wide field ">
                                <label for="">署名</label>
                                <textarea rows="3" name="autograph" cols="50" style="overflow: hidden; overflow-wrap: break-word; resize: none; height: 96px;"><?php echo e($userInfo->autograph, false); ?></textarea>
                            </div>
                            <div class="six wide field pt-3 mt-4">
                                文章署名，会拼接在每一个你发表过的帖子内容后面。支持 Markdown。
                            </div>
                        </div>

                        <div class="field">
                            <div class="col-sm-offset-2 col-sm-6">
                                <input class="ui button primary" id="user-edit-submit" type="submit" value="应用修改">
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.blog.blog', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /www/wwwroot/www.lmsail.com/resources/views/blog/users/edit.blade.php ENDPATH**/ ?>