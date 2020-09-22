

<?php $__env->startSection('title', $details->title . '博文编辑'); ?>

<?php $__env->startSection('css'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('blog/simplemde/simplemde.min.css'), false); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('blog/tag/tagsinput.css'), false); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="fourteen wide column">
        <div class="ui segment">

            <a class="ui right corner label compose-help" href="javascript:;">
                <i class="info icon"></i>
            </a>

            <div class="content extra-padding">

                <div class="ui header text-center text gery" style="margin:10px 0 40px">
                    <i class="icon paint brush"></i> 博文编辑
                </div>

                <!-- 发布结果提示信息 S -->
                <?php if(Session::has('error')): ?>
                    <div class="ui red message"><i class="exclamation circle icon"></i> <?php echo e(Session::get('error'), false); ?></div>
                <?php endif; ?>
                <!-- 发布结果提示信息 S -->

                <!-- 表单错误提示信息 S -->
                <?php if($errors->has('title')): ?>
                    <div class="ui red message"><?php echo e($errors->first('title'), false); ?></div>
                <?php endif; ?>

                <?php if($errors->has('content')): ?>
                    <div class="ui red message"><?php echo e($errors->first('content'), false); ?></div>
                <?php endif; ?>
                <!-- 表单错误提示信息 E -->

                <form method="POST" action="<?php echo e(url('blogedit'), false); ?>" id="blogform" class="ui form" style="min-height: 49px;">

                    <?php echo csrf_field(); ?>

                    <input type="hidden" name="id" value="<?php echo e($details->id, false); ?>" />

                    <div class="field">
                        <input class="form-control" type="text" name="title" id="title-field" value="<?php echo e($details->title, false); ?>" placeholder="标题" required="">
                    </div>

                    <div class="field">
                        <label>选择标签（Tab 键可创建新标签）</label>
                        <div class="ui search multiple selection tags dropdown empty">
                            <input name="tags" id="tagsinputval" class="tagsinput" data-role="tagsinput" value="<?php echo e($details->tags, false); ?>" placeholder="请选择标签（选填）" />
                        </div>
                    </div>

                    <div class="field">
                        <textarea rows="15" id="content" name="content" placeholder="请使用 Markdown 编写" required><?php echo e($details->content, false); ?></textarea>
                    </div>

                    <div class="ui segment" style="padding: 1em;">
                        <div class="inline fields mb-0" id="checkbox">
                            <label>同步到社区</label>
                            <div class="field">
                                <div class="ui radio checkbox">
                                    <input type="radio" name="community_id" tabindex="0" class="hidden" checked value="0">
                                    <label>不同步</label>
                                </div>
                            </div>
                            <div class="field">
                                <div class="ui radio checkbox">
                                    <input type="radio" name="community_id" tabindex="0" class="hidden" value="1">
                                    <label>
                                        <img class="ui image display-inline-block" style="width:18px;height:18px;margin-top:-2px;" src="https://iocaffcdn.phphub.org//uploads/communities/WtC3cPLHzMbKRSZnagU9.png">
                                        Laravel
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="text-mute fs-small mt-3">
                            <i class="info icon"></i> 同步到社区将提高文章的曝光量
                        </div>
                    </div>

                    <div class="ui message">
                        <button type="button" class="ui button primary publish-btn loading-on-clicked" id="send_blog">
                            <i class="icon send"></i>
                            保存文章
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
            element: document.getElementById("content"),
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

        $(function() {

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
        })
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.blog.blog', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /www/wwwroot/www.blog.com/resources/views/blog/article/edit.blade.php ENDPATH**/ ?>