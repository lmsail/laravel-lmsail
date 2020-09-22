

<?php $__env->startSection('title', '发布博文'); ?>

<?php $__env->startSection('css'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('blog/simplemde/simplemde.min.css'), false); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('blog/tag/tagsinput.css'), false); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="fifteen wide column">
        <div class="ui segment">

            <a class="ui right corner label compose-help" href="javascript:;">
                <i class="info icon"></i>
            </a>

            <div class="content extra-padding">

                <div class="ui header text-center text gery" style="margin:10px 0 40px">
                    <i class="icon paint brush"></i> 新建博文
                </div>

                <!-- 发布结果提示信息 S -->
                <?php if(Session::has('error')): ?>
                    <div class="ui red message"><i class="exclamation circle icon"></i> <?php echo e(Session::get('error'), false); ?></div>
                <?php endif; ?>
                <!-- 发布结果提示信息 S -->

                <!-- 表单错误提示信息 S -->
                <?php if($errors->has('cate_id')): ?>
                    <div class="ui red message"><?php echo e($errors->first('cate_id'), false); ?></div>
                <?php endif; ?>

                <?php if($errors->has('title')): ?>
                    <div class="ui red message"><?php echo e($errors->first('title'), false); ?></div>
                <?php endif; ?>

                <?php if($errors->has('content')): ?>
                    <div class="ui red message"><?php echo e($errors->first('content'), false); ?></div>
                <?php endif; ?>
                <!-- 表单错误提示信息 E -->

                <form method="POST" action="<?php echo e(url('release'), false); ?>" id="blogform" class="ui form" style="min-height: 49px;">

                    <?php echo csrf_field(); ?>

                    <div class="field">
                        <div class="fields">
                            <div class="three wide field">
                                <select class="ui dropdown fluid" name="cate_id" required="">
                                    <option value="">请选择分类</option>
                                    <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($val->id, false); ?>"><?php echo e($val->name, false); ?>（<?php echo e($val->post_count, false); ?>）</option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                            </div>

                            <div class="thirteen wide field">
                                <input class="form-control" type="text" name="title" id="title-field" value="<?php echo e(old('title'), false); ?>" placeholder="标题" required="">
                            </div>
                        </div>
                    </div>

                    <div class="field">
                        <label>选择标签（Tab 键可创建新标签）</label>
                        <div class="ui search multiple selection tags dropdown empty">
                            <input name="tags" id="tagsinputval" class="tagsinput" data-role="tagsinput" value="<?php echo e(old('tags'), false); ?>" placeholder="请选择标签（选填）" />
                        </div>
                    </div>

                    <div class="field">
                        <textarea rows="15" id="body-field" name="content" placeholder="请使用 Markdown 编写" required></textarea>
                    </div>

                    <div class="ui segment" style="padding: 1em;">
                        <div class="inline fields mb-0" id="checkbox">
                            <label>收录至专栏</label>
                            <div class="field">
                                <div class="ui radio checkbox">
                                    <input type="radio" name="community_id" tabindex="0" class="hidden" checked value="0">
                                    <label>忽略</label>
                                </div>
                            </div>

                            <?php $__currentLoopData = $list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="field">
                                <div class="ui radio checkbox">
                                    <input type="radio" name="community_id" tabindex="0" class="hidden" value="<?php echo e($val->id, false); ?>">
                                    <label class="ui popover" data-html="<?php echo e($val->name, false); ?>">
                                        <img class="ui image display-inline-block" style="width:18px;height:18px;margin-top:-2px;border-radius: 2px;" src="<?php echo e('/uploads/' . $val->logo, false); ?>">
                                        <?php echo e(str_limit($val->name, 10), false); ?>

                                    </label>
                                </div>
                            </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>

                        <div class="text-mute fs-small mt-3">
                            <i class="info icon"></i> 可申请收录至任何专栏，若想收录至非本人所属专栏，需该专栏作者审核同意后才可生效！
                        </div>
                    </div>

                    <div class="ui message">
                        <button type="button" class="ui button primary publish-btn loading-on-clicked" id="send_blog">
                            <i class="icon send"></i>
                            发布文章
                        </button>&nbsp;&nbsp;or&nbsp;&nbsp;
                        <button class="ui button" type="button" id="savedraft" name="subject" value="draft">
                            <i class="icon save"></i> 保存草稿
                        </button>

                        <a class="pull-right" href="https://learnku.com/docs/writing-docs/editor-guide/3958" target="_blank" style="color: #777;font-size: .9em;text-decoration: underline;margin-top: 8px;">
                            <i class="icon wpforms"></i> 编辑器使用指南
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>
    <script src="<?php echo e(asset('blog/simplemde/simplemde.min.js'), false); ?>"></script>
    <script src="<?php echo e(asset('blog/tag/tagsinput.js'), false); ?>"></script>
    <script src="<?php echo e(asset('InlineAttachment/inline-attachment.min.js'), false); ?>"></script>
    <script src="<?php echo e(asset('InlineAttachment/codemirror-4.inline-attachment.min.js'), false); ?>"></script>
    <script>
        /* 结合simplemde实现图片上传 */
        var inlineAttachmentConfig = {
            uploadUrl: "<?php echo e(url('api/upload'), false); ?>",
            extraParams: {
                '_token': $('meta[name="csrf-token"]').attr('content')
            }
        };
        var simplemde = new SimpleMDE({
            element: document.getElementById("body-field"),
            toolbar: ["bold", "italic", "heading", "|", "quote", "code", "table", "horizontal-rule", "unordered-list", "ordered-list", "|", "link", "image", "|", "side-by-side", "fullscreen", "|", {
                name: "circle",
                action: function circlefunction() {
                    window.open("https://learnku.com/docs/writing-docs/editor-guide/3958" ,"_blank");
                },
                className: "fa fa-info-circle",
                title: "Markdown高效编写指南",
            }],
        });
        inlineAttachment.editors.codemirror4.attach(simplemde.codemirror, inlineAttachmentConfig);

        <?php if(old('content')): ?>
            simplemde.value("<?php echo e(old('content'), false); ?>");
        <?php endif; ?>

        <?php if(Session::has('success')): ?>
            localStorage.setItem('title', "");
            localStorage.setItem('content', "");
            localStorage.setItem('tags', "");
        <?php endif; ?>

        $(function() {
            // 自动填充博客表单
            $("#title-field").val(localStorage.getItem('title'));
            if(!chkStrIsNull(localStorage.getItem('content'))) {
                simplemde.value(localStorage.getItem('content'));
            }
            var tags = localStorage.getItem('tags');
            if(!chkStrIsNull(tags)) {
                $("#tagsinputval").val(tags)
                if(tags.indexOf(',') >= 0) {
                    tags = tags.split(',');
                    for (var i = 0; i < tags.length; i++) {
                        $(".bootstrap-tagsinput").prepend('<span onclick="$(this).remove()" class="badge badge badge-info">'+ tags[i] +'&nbsp;<i class="delete icon"></i><span data-role="remove"></span></span>');
                    }
                } else {
                    $(".bootstrap-tagsinput").prepend('<span onclick="$(this).remove()" class="badge badge badge-info">'+ tags +'&nbsp;<i class="delete icon"></i><span data-role="remove"></span></span>')
                }
            }
            $("#send_blog").on("click", function() {
                $("#blog-form").addClass("loading");
                // 表单验证
                var title = $("#title-field").val();
                var content = simplemde.value();

                if(title == "") {
                    swal("标题为空！", "请填写文章标题！", "error");
                    return false;
                }
                if(content == "") {
                    swal("内容为空！", "请填写文章内容！", "error");
                    return false;
                }
                $("#blogform").submit();
            });
            $("#savedraft").on("click", function() {
                if(chkStrIsNull($("#title-field").val()) && chkStrIsNull(simplemde.value()) && chkStrIsNull($("#tagsinputval").val())) {
                    swal("保存失败！", "标题，博客内容，标签三者不能全空！", "error");return;
                }
                localStorage.setItem('title', $("#title-field").val());
                localStorage.setItem('content', simplemde.value());
                localStorage.setItem('tags', $("#tagsinputval").val());
                swal("保存成功！", "下次进入可继续编辑！", "success");
            })
        })
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.blog.blog', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /www/wwwroot/www.lmsail.com/resources/views/blog/article/release.blade.php ENDPATH**/ ?>