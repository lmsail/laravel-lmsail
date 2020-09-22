(function ($) {
    var $this;
    var $ajaxUrl = '';
    $.fn.pasteUploadImage = function (ajaxUrl) {
        $this = $(this);
        $ajaxUrl = ajaxUrl;
        $this.on('paste', function (event) {
            var filename, image, pasteEvent, text;
            pasteEvent = event.originalEvent;
            if (pasteEvent.clipboardData && pasteEvent.clipboardData.items) {
                image = isImage(pasteEvent);
                if (image) {
                    event.preventDefault();
                    filename = getFilename(pasteEvent) || "image.png";
                    text = "{{" + filename + "(uploading...)}}";
                    pasteText(text);
                    return uploadFile(image.getAsFile(), filename);
                }
            }
        });
        $this.on('drop', function (event) {
            var filename, image, pasteEvent, text;
            pasteEvent = event.originalEvent;
            if (pasteEvent.dataTransfer && pasteEvent.dataTransfer.files) {
                image = isImageForDrop(pasteEvent);
                if (image) {
                    event.preventDefault();
                    filename = pasteEvent.dataTransfer.files[0].name || "image.png";
                    text = "{{" + filename + "(uploading...)}}";
                    pasteText(text);
                    return uploadFile(image, filename);
                }
            }
        });
    };

    pasteText = function (text) {
        var afterSelection, beforeSelection, caretEnd, caretStart, textEnd;
        caretStart = $this[0].selectionStart;
        caretEnd = $this[0].selectionEnd;
        textEnd = $this.val().length;
        beforeSelection = $this.val().substring(0, caretStart);
        afterSelection = $this.val().substring(caretEnd, textEnd);
        $this.val(beforeSelection + text + afterSelection);
        $this.get(0).setSelectionRange(caretStart + text.length, caretEnd + text.length);
        return $this.trigger("input");
    };
    isImage = function (data) {
        var i, item;
        i = 0;
        while (i < data.clipboardData.items.length) {
            item = data.clipboardData.items[i];
            if (item.type.indexOf("image") !== -1) {
                return item;
            }
            i++;
        }
        return false;
    };
    isImageForDrop = function (data) {
        var i, item;
        i = 0;
        while (i < data.dataTransfer.files.length) {
            item = data.dataTransfer.files[i];
            if (item.type.indexOf("image") !== -1) {
                return item;
            }
            i++;
        }
        return false;
    };
    getFilename = function (e) {
        var value;
        if (window.clipboardData && window.clipboardData.getData) {
            value = window.clipboardData.getData("Text");
        } else if (e.clipboardData && e.clipboardData.getData) {
            value = e.clipboardData.getData("text/plain");
        }
        value = value.split("\r");
        return value[0];
    };
    getMimeType = function (file, filename) {
        var mimeType = file.type;
        var extendName = filename.substring(filename.lastIndexOf('.') + 1);
        if (mimeType != 'image/' + extendName) {
            return 'image/' + extendName;
        }
        return mimeType
    };
    uploadFile = function (file, filename) {
        var formData = new FormData();
        formData.append('file', file);
        formData.append('_token', $('meta[name="csrf-token"]').attr('content'));
        formData.append("mimeType", getMimeType(file, filename));

        $.ajax({
            url: $ajaxUrl,
            data: formData,
            type: 'post',
            processData: false,
            contentType: false,
            dataType: 'json',
            xhrFields: {
                withCredentials: true
            },
            success: function (data) {
                if (data.success) {
                    setTimeout(function () {
                        handleTextLen($("#comment-composing-box").val().length)
                    }, 200);
                    return insertToTextArea(filename, data.message);
                }
                return replaceLoadingTest(filename);
            },
            error: function (xOptions, textStatus) {
                replaceLoadingTest(filename);
            }
        });
    };
    insertToTextArea = function (filename, url) {
        return $this.val(function (index, val) {
            return val.replace("{{" + filename + "(uploading...)}}", "![" + filename + "](" + url + ")" + "\n");
        });
    };
    replaceLoadingTest = function (filename) {
        return $this.val(function (index, val) {
            return val.replace("{{" + filename + "(uploading...)}}", filename + "\n");
        });
    };
})(jQuery);
/**
 * 删除动态
 */
function dynamicdel(obj) {
    swal({
        title: "Are you sure?",
        text: "确定要删除吗？",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: '#DD6B55',
        confirmButtonText: 'Yes',
        cancelButtonText: "No",
        closeOnConfirm: false
    }, function (isConfirm) {
        if (isConfirm) {
            var id = $(obj).data("id");
            $(obj).parents(".menu").prev("span.down-loading").html('<i class="spinner icon loading"></i>');
            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: delpath,
                dataType : 'json',
                type: 'POST',
                data: {id: id},
                success:function(response) {
                    if(response.code == 200) {
                        swal({
                            title: "删除成功", text:  response.msg, type:  "success"
                        },function(){
                            $(obj).parents(".event").remove();
                        });
                    } else {
                        $(obj).parents(".menu").prev("span.down-loading").html('<i class="angle down icon"></i>');
                        swal("删除失败！", response.msg, "error");
                    }
                }
            });
        }
    });
}