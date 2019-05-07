$(function () {

    $(".text-overflow").each(function() {
        var height = $(this).height();
        if(height > 120) {
            $(this).css({"max-height": "120px", "overflow": "hidden"}).find(".show-more").show();
        }
    });

    $(".text-overflow").find(".show-more").click(function() {
        $(this).hide().parent(".text-overflow").css({"height": "auto", "max-height": "none"});
    });

    $("body").click(function () {
        $(".face-list").hide();
    });
    $(".emoji-picker").click(function () {
        event.stopPropagation();
        $('.face-list').toggle(100)
    });
    $(".face-item").click(function () {
        event.stopPropagation();
        if($("#comment-composing-box").val().length < 180) {
            insertAtCursor(document.getElementById("comment-composing-box"), $(this).attr("title") + " ")
            handleTextLen($("#comment-composing-box").val().length)
        }
    });
    $("#send").on("click", function () {
        var _this   = $(this);
        if(_this.hasClass("disabled")) {
            swal("权限不足！", "请先登录后再尝试操作！", "error")
            return false;
        }
        $("#tweet-create-form").addClass("loading");
        sailAjax(dynamic_path, {content: $("#comment-composing-box").val()}, function(response) {
            $("#tweet-create-form").removeClass("loading");
            if(response.code == 400) {
                swal("发布失败！", response.msg, "error")
                return false;
            }
            swal({
                title: "发布成功", text:  response.msg, type:  "success"
            },function(){
                location.reload();
            });
        });
    });
    $('.markdown-body').find("p>img").not(".emoji").click(function() {
        var imgsrc = $(this).attr("src");
        $("#img-show").fadeIn().find("#img-html").html("<img src='"+imgsrc+"'>");
    });
    // 点赞
    $(".topic-vote").on("click", function() {
        var _this = $(this);
        var id   = _this.data("id");
        var uid  = _this.data("uid");
        var type = _this.data("type");
        _this.find("i").attr("class", "spinner loading icon");
        sailAjax(praisepath, {content: $("#comment-composing-box").val(), foreign_id: id, to_id: uid, type: type}, function(response) {
            _this.find("i").attr("class", "icon thumbs up outline");
            if(response.code == 400) {
                swal("点赞失败！", response.msg, "error");
                return false;
            } else {
                if(response.code == 200) {
                    // 点赞成功
                    _this.find(".vote-count").html(parseInt(_this.find(".vote-count").text()) + 1);
                } else {
                    // 取消点赞
                    if(parseInt(_this.find(".vote-count").text()) == 0) {
                        return false;
                    }
                    _this.find(".vote-count").html(parseInt(_this.find(".vote-count").text()) - 1);
                }
            }
        });
    });
    // 评论点赞
    $(".reply-upvote").on("click", function() {
        var _this = $(this);
        var id   = _this.data("id");
        var uid  = _this.data("uid");
        _this.find("i").attr("class", "spinner loading icon");
        sailAjax(replypraisepath, { foreign_id: id, to_id: uid }, function(response) {
            _this.find("i").attr("class", "reaction-emoji icon thumbs up outline");
            if(response.code == 400) {
                swal("点赞失败！", response.msg, "error");
                return false;
            } else {
                if(response.code == 200) {
                    // 点赞成功
                    _this.find(".vote-count").html(parseInt(_this.find(".vote-count").text()) + 1);
                } else {
                    // 取消点赞
                    if(parseInt(_this.find(".vote-count").text()) == 0) {
                        return false;
                    }
                    _this.find(".vote-count").html(parseInt(_this.find(".vote-count").text()) - 1);
                }
            }
        });
    });
});

// 生成markdown索引目录
function articleIndex() {
    var $article = $('.markdown-body');
    var $header = $article.find('h1, h2, h3');
    var _html = '<ul id="articleIndex" class="tocify-header nav nav-list"></ul>';
    $('#toc').append(_html);
    var _tagLevel = 1;                  // 最初的level
    var _$wrap = $('#articleIndex');    // 最初的wrap
    $header.each(function(index) {
        if($(this).text().trim() === '') {     // 空的title
            return;
        }
        $(this).attr('id', 'articleHeader' + index);      // 加id
        var _tl = parseInt($(this)[0].tagName.slice(1));  // 当前的tagLevel
        var _$li = null;
        if(index === 0 || _tl === _tagLevel) {  // 第一个或者是与上一个相同
            _$li = $('<li class="tocify-item"><a href="#articleHeader'+ index +'" onclick="return false;">' + $(this).text() + '</a></li>');
            _$wrap.append(_$li);
        } else if(_tl > _tagLevel) {  // 当前的大于上次的
            _$li = $('<ul class=" nav nav-list"><li class="tocify-item" style="text-indent: 10px;"><a onclick="return false;" href="#articleHeader' + index + '">' + $(this).text() + '</a></li></ul>');
            _$wrap.append(_$li);
            _$wrap = _$li;
        } else if(_tl < _tagLevel) {    // 当前的小于上次的
            _$li = $('<li class="tocify-item"><a href="#articleHeader' + index + '" onclick="return false;">' + $(this).text() + '</a></li>');
            if(_tl === 1) {
                $('#articleIndex').append(_$li);
                _$wrap = $('#articleIndex');
            } else {
                _$wrap.parent('ul').append(_$li);
                _$wrap = _$wrap.parent('ul');
            }
        }
        _tagLevel = _tl;
    });

    // 如果不存在目录索引则隐藏
    if($("#articleIndex").find("li").length > 0) {
        $(".hide-on-mobile").show();
        /* 锚点定位 */
        $(".tocify-item").on("click", function() {
            $(".tocify-item").removeClass("active");
            $(this).addClass("active");
            $('html,body').animate({scrollTop: ($($(this).find("a").attr('href')).offset().top - 50 )}, 500);
        });

        /* 滚动监听 */
        var tocTop = $("#toc").offset().top;
        window.onscroll = function() {
            if($(window).scrollTop() > tocTop) {
                $(".hide-on-mobile").addClass("fixed");
            } else {
                $(".hide-on-mobile").removeClass("fixed");
            }
            $("#toc").find("li").each(function() {
                if(parseInt($($(this).find("a").attr('href')).offset().top) - $(window).scrollTop() <= 100) {
                    $(".tocify-item").removeClass("active");
                    $(this).addClass("active");
                }
            });
            if($($("#toc").find("li").last().find("a").attr("href")).offset().top - $(window).scrollTop() <= 50) {
                $(".hide-on-mobile").removeClass("fixed");
            }
        }
    }
}

// 获取动态评论列表
function comments(obj, id)
{
    makeExpandingArea(document.getElementById('reply-textarea-' + id));
    if($('.comment-' + id).is(":hidden") === false) {
        $('.comment-' + id).hide();
        return false;
    }
    $('div[class^="comment"]').hide();
    $('.comment-' + id).show();

    sailAjax(commentPath, {foreign_id: id}, function(ret) {
        var AtList = ['lmsail'];
        if(ret.data.comments.length > 0 && ret.code == 200) {
            var interText = doT.template($("#dynamic-comment-" + id).html());
            $("#reply-content" + id).html(interText(ret.data.comments));
        } else {
            $("#loading-" + id).html("还木有评论，抢占沙发~")
        }
        AtList = ret.data.AtList;

        // 监听艾特
        var at_config = { at: "@", data: AtList, limit: 20 };
        $('textarea[id^="reply-textarea"]').atwho(at_config);
    });
    $('#reply-textarea-' + id).focus(function () {
        $(this).removeClass("reply-textarea");
        $(this).removeClass('focus');
    });
    $('#reply-textarea-' + id).blur(function () {
        $(this).addClass('focus');
        if($(this).val().length <= 0) {
            $(this).addClass("reply-textarea");
        }
    });
}

// 添加评论
function addComment(obj, id) {
    var content = $("#reply-textarea-" + id).val();
    if(content == "") {
        swal("请填写评论内容！", "评论内容不能为空", "error");
        return false;
    }
    $(obj).addClass("loading");
    sailAjax(addcommentPath, {foreign_id: id, content: content}, function(ret) {
        if(ret.code == 200) {
            $("#reply-textarea-" + id).addClass('focus').val("");
            $(obj).removeClass("loading");

            // 评论数+1
            $("#state-total-" + id + ", #comment-total-" + id).html(parseInt($("#state-total-" + id).html()) + 1);

            getCommentInfo(content, id, ret.data.id, ret.data.avatar, ret.data.nickname, ret.data.special, ret.data.username);
        } else {
            swal("评论失败！", ret.msg, "error");
        }
    });
}

function getCommentInfo(content, id, uid, avatar, nickname, special, username) {
    var strVar = "";
    strVar += "<dl class=\"comment_list\" id=\"comment_list\">";
    strVar += "    <dt>\n";
    strVar += "        <a href=\"blog/"+username+"/"+uid+"\" target=\"_blank\">";
    strVar += "            <img width=\"20\" height=\"20\" src=\""+avatar+"\">";
    strVar += "        <\/a>";
    strVar += "    <\/dt>\n";
    strVar += "    <dd>\n";
    strVar += "        <p class=\"cont\">\n";
    strVar += "        <a href=\"blog/"+username+"/"+uid+"\" target=\"_blank\">";
    strVar += nickname;
    if(special == 1) {
        strVar += '<i class="vimeo square icon" style="color: #FFB800;"></i>:';
    }
    strVar += "            <\/a>";
    strVar += "            <em>" + content + " <span class=\"time\" style=\"color: #999\">（刚刚）<\/span><\/em>";
    strVar += "        <\/p>";
    strVar += "    <\/dd>";
    strVar += "<\/dl>";
    $("#loading-" + id).remove();
    $("#reply-content" + id).prepend(strVar);
}

/**
 * 处理输入最大字符
 * @param length
 */
function handleTextLen(length) {
    if($("#comment-composing-box").val() == "") {
        $("#dynamic-result").hide(); return;
    }
    if(length <= 0) {
        $("#send").addClass("disabled");
        $("#dynamic-result").hide();
    }
    if(length > 0) {
        if(!$("[name='article']").val()) {
            $("#error").html(length >= 180 ? "超过最大限制啦。最多只能输入180个字符哦！" : "");
        }
        $("#send").removeClass("disabled");
        $("#dynamic-result").show();
    }
    $("#word-count").html(length);
    convert();
}

/**
 * 解析markdown语法
 */
function convert(){
    var html = marked(document.getElementById("comment-composing-box").value);

    /* 解析表情 */
    var face_list = [];
    html.replace(/\[#(\w+?)\]/g, function (face, $1,$2) {
        face_list.push(face)
    });

    for (i in face_list) {
        faceName = face_list[i].replace('[#', '').replace(']', '')
        html = html.replace(face_list[i], '<img class="emoji" width="25" height="25" src="' + face_path + "/blog/face/" + faceName + '.png">')
    }

    document.getElementById("dynamic-result").innerHTML = html;
}

/**
 * 在光标位置插入表情
 * @param myField    文本框对象
 * @param myValue 要插入的值
 */
function insertAtCursor(myField, myValue)
{
    //IE support
    if (document.selection)
    {
        myField.focus();
        sel            = document.selection.createRange();
        sel.text    = myValue;
        sel.select();
    }
    //MOZILLA/NETSCAPE support
    else if (myField.selectionStart || myField.selectionStart == '0')
    {
        var startPos    = myField.selectionStart;
        var endPos        = myField.selectionEnd;
        // save scrollTop before insert
        var restoreTop    = myField.scrollTop;
        myField.value    = myField.value.substring(0, startPos) + myValue + myField.value.substring(endPos, myField.value.length);
        if (restoreTop > 0)
        {
            myField.scrollTop = restoreTop;
        }
        myField.focus();
        myField.selectionStart    = startPos + myValue.length;
        myField.selectionEnd    = startPos + myValue.length;
    } else {
        myField.value += myValue;
        myField.focus();
    }
}

// 终极判断变量是否为空
function chkStrIsNull(str) {
    if ( str == "" ) return true;
    if(!str) return true;
    var regu = "^[ ]+$";
    var re = new RegExp(regu);
    return re.test(str);
}

/**
 * 封装Ajax
 * @param url
 * @param data
 * @param callback
 * @param method
 */
function sailAjax(url, data, callback) {
    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        url: url,
        dataType : 'json',
        type: "post",
        data: data,
        success:function(response) {
            callback(response);
        },
        error: function() {
            swal("网络请求出错！", "请稍候再试~", "error");
        }
    });
}

/**
 * textarea 自适应高度
 * @param el
 */
function makeExpandingArea (el) {

    var timer = null;
    //由于ie8有溢出堆栈问题，故调整了这里
    var setStyle = function(el, auto) {
        if (auto) el.style.height = 'auto';
        el.style.height = el.scrollHeight + 'px';
    }
    var delayedResize = function(el) {
        if (timer) {
            clearTimeout(timer);
            timer = null;
        }
        timer = setTimeout(function() {
            setStyle(el)
        }, 200);
    }
    if (el.addEventListener) {

        // 处理js自动追加，不生效问题
        setTimeout(function() {
            handleTextLen(el.value.length);
        }, 200)

        el.addEventListener('input', function() {
            handleTextLen(el.value.length);
            setStyle(el, 1);
        }, false);
        setStyle(el)

    } else if (el.attachEvent) {

        el.attachEvent('onpropertychange', function() {
            handleTextLen(el.value.length);
            setStyle(el)
        })
        setStyle(el)
    }
    if (window.VBArray && window.addEventListener) { //IE9
        el.attachEvent("onkeydown", function() {
            var key = window.event.keyCode;
            if (key == 8 || key == 46) delayedResize(el);
            handleTextLen(el.value.length);
        });
        el.attachEvent("oncut", function() {
            delayedResize(el);
            handleTextLen(el.value.length);
        });
        handleTextLen(el.value.length);
    }
}