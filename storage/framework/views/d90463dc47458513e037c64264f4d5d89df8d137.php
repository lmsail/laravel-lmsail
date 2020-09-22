<div class="clearfix"></div>
<footer class="ui inverted vertical footer segment">
    <div class="ui center aligned container" style="color: #c1c1c1;width: 1170px;">
        <p class="pull-left">
            由 <a href="" style="color: #c1c1c1;" target="_blank"><?php echo e(config('author.author'), false); ?></a> 设计和编码 <span style="color: #e27575;font-size: 14px;">❤</span>
            - <?php echo e(config('base.copyright'), false); ?> - <?php echo e(config('base.version'), false); ?>

        </p>

        <p class="pull-right"><a href="mailto:<?php echo e(config('author.contact_email'), false); ?>" style="color: #c1c1c1;">有问题请联系我</a></p>
    </div>
</footer>
<a id="scrollUp" href="#top" style="position: fixed; z-index: 2147483647;">Scroll to top</a>
<div class="ui modal">
    <div class="header modal-title">举报话题</div>
    <form class="ui form" method="POST" action="" accept-charset="UTF-8">
        <?php echo csrf_field(); ?>

        <div class="content" style="padding: 20px">
            <p>
                我要举报该<span class="modal-typename">话题</span>，理由是：
            </p>

            <div class="field">
                <div class="ui radio checkbox checked">
                    <input type="radio" name="report_type" value="spam" required="" tabindex="0" class="hidden">
                    <label><strong>垃圾广告</strong>：恶意灌水、广告、推广等内容</label>
                </div>
            </div>
            <div class="field">
                <div class="ui radio checkbox">
                    <input type="radio" name="report_type" value="meaningless" required="" tabindex="0" class="hidden">
                    <label><strong>无意义内容</strong>：测试、灌水、文不对题、文章品质太差等</label>
                </div>
            </div>
            <div class="field">
                <div class="ui radio checkbox">
                    <input type="radio" name="report_type" value="violation" required="" tabindex="0" class="hidden">
                    <label><strong>违规内容</strong>：色情、暴利、血腥、敏感信息等</label>
                </div>
            </div>
            <div class="field">
                <div class="ui radio checkbox">
                    <input type="radio" name="report_type" value="unfriendly" required="" tabindex="0" class="hidden">
                    <label><strong>不友善内容</strong>：人身攻击、挑衅辱骂、恶意行为</label>
                </div>
            </div>
            <div class="field">
                <div class="ui radio checkbox">
                    <input type="radio" name="report_type" value="vpn" required="" tabindex="0" class="hidden">
                    <label><strong>科学上网</strong>：翻墙、VPN、Shadowsocks，政策风险，会被关站！</label>
                </div>
            </div>
            <div class="field">
                <div class="ui radio checkbox">
                    <input type="radio" name="report_type" value="qa" required="" tabindex="0" class="hidden">
                    <label><strong>不懂提问</strong>：提问太随意，需要再做一遍《提问的智慧》测验</label>
                </div>
            </div>
            <div class="field">
                <div class="ui radio checkbox">
                    <input type="radio" name="report_type" value="other" required="" tabindex="0" class="hidden">
                    <label><strong>其他理由</strong>：请补充说明</label>
                </div>
            </div>

            <div class="field">
                <textarea placeholder="请提供详尽的说明" name="reason" rows="3" style="overflow: hidden; overflow-wrap: break-word; resize: none; height: 96px;"></textarea>
            </div>
        </div>
        <div class="actions field" style="padding: 1px 12px 25px;">
            <button class="ui primary button" type="button">举报</button>
            <div class="ui cancel button">取消</div>
        </div>
    </form>
</div><?php /**PATH /www/wwwroot/www.lmsail.com/resources/views/layouts/blog/_footer.blade.php ENDPATH**/ ?>