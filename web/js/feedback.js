var flags;
var arr;

function valid_feedback() {
    flags = [false, false, false];
    arr = ["#from_name_feedback", "#from_email_feedback", "#feedback_textarea_page"];
    document.getElementById("feedback_textarea_page").onkeyup = function () {
        $("#feedback-length").text($("#feedback_textarea_page").val().trim().length)
    }
    for (var i = 0; i < 3; i++) {
        $(arr[i]).focusin(function () {
            $(this).removeClass("suctextbox");
            $(this).removeClass("errtextbox");
            flags[i] = false;
        });
    }

    $(arr[0]).focusout(function () {
        var value = $(this).val().trim();
        if (value.search(/^[A-Za-zА-Яа-яЁё ]{2,50}$/i) !== 0) {
            if (value.trim() === "") $(this).notify("Заполните поле", {
                position: "top left",
                autoHideDelay: 2000,
                height: '10px',
                arrowShow: false,
                className: 'warn',
                gap: 1
            });
            else $(this).notify("Некорректное имя", {
                position: "top left",
                autoHideDelay: 2000,
                height: '10px',
                arrowShow: false,
                className: 'error',
                gap: 0
            });
            $(this).removeClass("suctextbox");
            $(this).addClass("errtextbox");
            flags[0] = false;
        } else {
            $(this).notify("Верно", {
                position: "top left",
                autoHideDelay: 2000,
                height: '10px',
                arrowShow: false,
                className: 'success',
                gap: 0
            });
            $(this).removeClass("errtextbox");
            $(this).addClass("suctextbox");
            flags[0] = true;

        }
    });
    $(arr[1]).focusout(function () {
        var value = $(this).val().toLowerCase();
        if (value.search(/^[a-z0-9]+(?:\.[a-z0-9]+)*@(?:[a-z0-9-]+\.)+[a-z]{2,6}/) === 0) {
            $(this).notify("Верно", {
                position: "top left",
                autoHideDelay: 2000,
                height: '10px',
                arrowShow: false,
                className: 'success',
                gap: 0
            });
            $(this).removeClass("errtextbox");
            $(this).addClass("suctextbox");
            flags[1] = true;
        } else {
            if (value.trim() === "") $(this).notify("Заполните поле", {
                position: "top left",
                autoHideDelay: 2000,
                height: '10px',
                arrowShow: false,
                className: 'warn',
                gap: 1
            });
            else $(this).notify("Некорректный Email", {
                position: "top left",
                autoHideDelay: 2000,
                height: '10px',
                arrowShow: false,
                className: 'error',
                gap: 0
            });
            $(this).removeClass("suctextbox");
            $(this).addClass("errtextbox");
            flags[1] = false;
        }
    });
    $(arr[2]).focusout(function () {
        var len = $(this).val().trim().length
        if (len >= 100 && len <= 10000) {
            $(this).removeClass("errtextbox");
            $(this).addClass("suctextbox");
            $(this).notify("Верно", {
                position: "top left",
                autoHideDelay: 2000,
                height: '10px',
                arrowShow: false,
                className: 'success',
                gap: 0
            });

            flags[2] = true;
        } else if (len <= 10000){
            if (len === 0) $(this).notify("Заполните поле", {
                position: "top left",
                autoHideDelay: 2000,
                height: '10px',
                arrowShow: false,
                className: 'warn',
                gap: 1
            });
            else $(this).notify("Недостаточно символов", {
                position: "top left",
                autoHideDelay: 2000,
                height: '10px',
                arrowShow: false,
                className: 'error',
                gap: 0
            });
            $(this).removeClass("suctextbox");
            $(this).addClass("errtextbox");
            flags[2] = false;
        }else if (len >= 100){
            $(this).notify("Слишком много символов", {
                position: "top left",
                autoHideDelay: 2000,
                height: '10px',
                arrowShow: false,
                className: 'error',
                gap: 0
            });
            $(this).removeClass("suctextbox");
            $(this).addClass("errtextbox");
            flags[2] = false;
        }
    });
    $("#send_footer_page").click(function () {
        if (flags[0] && flags[1] && flags[2]) {
            var plainText = $("#feedback_textarea_page").val().trim().replace(/\n/g, "<br>").replace(/\s/g, "&nbsp;") + "<br><br>--<br>С уважением,<br>"
                + $("#from_name_feedback").val() + " &lt;<a href='mailto:" + $("#from_email_feedback").val() + "' style='color: black; text-decoration: none'>"
                + $("#from_email_feedback").val() + "</a>&gt;";
            var encrypt = new JSEncrypt();
            encrypt.setPublicKey($("#pubkey").val());
            var plainTextArray = plainText.match(/.{1,250}/g)
            var text = ""
            for (var i = 0; i < plainTextArray.length; i++) {
                text += encrypt.encrypt(plainTextArray[i]) + "_"
            }
            text = text.substring(0, text.length - 1)
            load_yes()
            $("#send_footer_page").attr("disabled", true);

            $.ajax({
                url: feed_servlet_path,
                type: "POST",
                dataType: "html",
                data: "text=" + text,
                success: function (resultText) {
                    load_no()
                    $("#send_footer_page").attr("disabled", false)
                    if (resultText.toString() === "success") {
                        $("#send_footer_page").notify("Отправлено", {
                            position: "top center",
                            autoHideDelay: 3000,
                            height: '10px',
                            arrowShow: false,
                            className: 'success',
                            gap: 0
                        });
                        $("#feedback_textarea_page").val("").removeClass("suctextbox").removeClass("errtextbox");
                        $("#feedback-length").text(0)
                        flags[2] = false;
                    } else $("#send_footer_page").notify("Ошибка",
                        {
                            position: "top center",
                            autoHideDelay: 3000,
                            height: '10px',
                            arrowShow: false,
                            className: 'error',
                            gap: 0
                        });
                },
                error: function (response) {
                    load_no()
                    $("#send_footer_page").attr("disabled", false).notify("Ошибка", {
                        position: "top center",
                        autoHideDelay: 3000,
                        height: '10px',
                        arrowShow: false,
                        className: 'error',
                        gap: 0
                    });
                }
            });
        } else {
            $(this).notify("Форма заполнена некорректно", {
                position: "top center",
                autoHideDelay: 5000,
                height: '10px',
                arrowShow: false,
                className: 'error',
                gap: 0
            });
        }
    });

}


function anim_func(elementId) {
    $("html,body").animate({scrollTop: $(elementId).offset().top - 200}, 700);
}