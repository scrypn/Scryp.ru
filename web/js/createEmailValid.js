var code;
var email;
var name;
var key;
var password;
var flags = [];

function Valid_EmailCreator() {
    for (var i = 0; i < 5; i++) {
        flags[i] = false;
    }
    var arr = ["#create-email-name", "#create-email-box", "#create-email-pass", "#create-email-pass-2", "#create-email-key"];
    for (var i = 0; i < arr.length; i++) {
        $(arr[i]).focusin(function () {
            $(this).removeClass("suctextbox");
            $(this).removeClass("errtextbox");
            flags[i] = false;
            window.onbeforeunload = function () {
                return true;
            };
        });
    }
    $(arr[2]).focusin(function () {
        $(".psw-validate").addClass("open-psw");
        $(arr[3]).val("").removeClass("suctextbox").addClass("errtextbox");
        flags[3] = false;
        $(this).off("mouseover").off("mouseout")
    });
    $(arr[2]).on('mouseover', function () {
        $(".psw-validate").addClass("open-psw");
    })
    $(arr[2]).on('mouseout', function () {
        $(".psw-validate").removeClass("open-psw");
    })
    $(arr[2]).focusout(function () {
        $(this).on('mouseover', function () {
            $(".psw-validate").addClass("open-psw");
        })
        $(this).on('mouseout', function () {
            $(".psw-validate").removeClass("open-psw");
        })
    });
    $(arr[0]).focusout(function () {
        var value = $(this).val();
        name = value;
        if (value.search(/^[A-Za-zА-Яа-яЁё ]{2,}$/i) !== 0) {
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
                gap: 1
            });
            $(this).removeClass("suctextbox");
            $(this).addClass("errtextbox");
            flags[0] = false;
        } else {
            $(this).notify("Верно", {
                position: "top left",
                autoHideDelay: 2000,
                arrowShow: false,
                className: 'success',
                gap: 1
            });
            $(this).removeClass("errtextbox");
            $(this).addClass("suctextbox");
            flags[0] = true;

        }
    });

    $(arr[1]).focusout(function () {
        if (!$(this).prop('readonly')) {
            var value = $(this).val().toLowerCase() + "@scrypmail.ru";
            email = value;
            if (value.search(/^[a-z0-9]+(?:\.[a-z0-9]+)*@(?:[a-z0-9-]+\.)+[a-z]{2,6}/) === 0 &&
                value.split("@")[0].length >= 5 && value.split("@")[0].length <= 64) {
                $("#loader-input-email").show();
                $(this).prop('readonly', true);
                $.ajax({
                    url: val_servlet_path,
                    type: "POST",
                    dataType: "html",
                    data: "email=" + value,
                    success: function (resultText) {
                        $("#loader-input-email").hide();
                        $(arr[1]).prop('readonly', false);
                        if (resultText === "no") {
                            $(arr[1]).notify("Email доступен", {
                                position: "top left",
                                autoHideDelay: 2000,
                                arrowShow: false,
                                className: 'success',
                                gap: 1
                            });
                            $(arr[1]).removeClass("errtextbox");
                            $(arr[1]).addClass("suctextbox");
                            flags[1] = true;
                        } else if (resultText === "yes") {
                            $(arr[1]).notify("Email занят", {
                                position: "top left",
                                autoHideDelay: 2000,
                                arrowShow: false,
                                className: 'error',
                                gap: 1
                            });
                            $(arr[1]).removeClass("suctextbox");
                            $(arr[1]).addClass("errtextbox");
                            flags[1] = false;
                        } else if (resultText === "incorrect") {
                            $(arr[1]).notify("Email некорректен", {
                                position: "top left",
                                autoHideDelay: 2000,
                                arrowShow: false,
                                className: 'error',
                                gap: 1
                            });
                            $(arr[1]).removeClass("suctextbox");
                            $(arr[1]).addClass("errtextbox");
                            flags[1] = false;
                        } else {
                            $(arr[1]).notify("Email недоступен", {
                                position: "top left",
                                autoHideDelay: 2000,
                                arrowShow: false,
                                className: 'error',
                                gap: 1
                            });
                            $(arr[1]).removeClass("suctextbox");
                            $(arr[1]).addClass("errtextbox");
                            flags[1] = false;
                        }
                    },
                    error: function (response) {
                        $("#loader-input-email").hide();
                        $(arr[1]).prop('readonly', false);
                        serverError();
                    }
                });

            } else {
                if (value.trim() === "") $(this).notify("Заполните поле", {
                    position: "top left",
                    autoHideDelay: 2000,
                    height: '10px',
                    arrowShow: false,
                    className: 'warn',
                    gap: 1
                });
                else $(this).notify("Email некорректен", {
                    position: "top left",
                    autoHideDelay: 2000,
                    arrowShow: false,
                    className: 'error',
                    gap: 1
                });
                $(this).removeClass("suctextbox");
                $(this).addClass("errtextbox");
                flags[1] = false;
            }
        }
    });

    $(arr[2]).focusout(function () {
        $(".psw-validate").removeClass("open-psw");
        var lowerCaseLetters = /[a-zа-я]/g;
        var upperCaseLetters = /[A-ZА-Я]/g;
        var numbers = /[0-9]/g;
        var psw = $(this).val().trim();
        password = psw;
        if (psw.match(upperCaseLetters) && psw.match(lowerCaseLetters) && psw.match(numbers) && psw.length >= 8 && psw.length <= 20) {
            $(this).notify("Верно", {
                position: "top left",
                autoHideDelay: 2000,
                arrowShow: false,
                className: 'success',
                gap: 1
            });
            $(this).removeClass("errtextbox");
            $(this).addClass("suctextbox");
            flags[2] = true;
        } else {
            if (psw.trim() === "") $(this).notify("Заполните поле", {
                position: "top left",
                autoHideDelay: 2000,
                height: '10px',
                arrowShow: false,
                className: 'warn',
                gap: 1
            });
            else $(this).notify("Пароль некорректен", {
                position: "top left",
                autoHideDelay: 2000,
                arrowShow: false,
                className: 'error',
                gap: 1
            });
            $(this).removeClass("suctextbox");
            $(this).addClass("errtextbox");
            flags[2] = false;
        }
    });
    $(arr[3]).focusout(function () {
        var value = $(this).val().trim();
        if (password !== undefined && value === password && password !== "") {
            $(this).notify("Верно", {
                position: "top left",
                autoHideDelay: 2000,
                arrowShow: false,
                className: 'success',
                gap: 1
            });
            $(this).removeClass("errtextbox");
            $(this).addClass("suctextbox");
            flags[3] = true;
        } else {
            if (value.trim() === "") $(this).notify("Заполните поле", {
                position: "top left",
                autoHideDelay: 2000,
                height: '10px',
                arrowShow: false,
                className: 'warn',
                gap: 1
            });
            else $(this).notify("Пароли не сходятся", {
                position: "top left",
                autoHideDelay: 2000,
                arrowShow: false,
                className: 'error',
                gap: 1
            });
            $(this).removeClass("suctextbox");
            $(this).addClass("errtextbox");
            flags[3] = false;

        }
    });

    var keyParam = new URL(window.location.href).searchParams.get("key");
    if (keyParam !== null) {
        var value = $(arr[4]).val();
        key = value;
        if (value.search(/^[A-Za-z0-9]{6}$/i) !== 0) {
            $(arr[4]).removeClass("suctextbox");
            $(arr[4]).addClass("errtextbox");
            flags[4] = false;
        } else {
            $(arr[4]).removeClass("errtextbox");
            $(arr[4]).addClass("suctextbox");
            flags[4] = true;

        }
    }

    $(arr[4]).focusout(function () {
        var value = $(this).val();
        key = value;
        if (value.search(/^[A-Za-z0-9]{6}$/i) !== 0) {
            if (value.trim() === "") $(this).notify("Заполните поле", {
                position: "top left",
                autoHideDelay: 2000,
                height: '10px',
                arrowShow: false,
                className: 'warn',
                gap: 1
            });
            else $(this).notify("Неверный формат ключа", {
                position: "top left",
                autoHideDelay: 2000,
                height: '10px',
                arrowShow: false,
                className: 'error',
                gap: 1
            });
            $(this).removeClass("suctextbox");
            $(this).addClass("errtextbox");
            flags[4] = false;
        } else {
            $(this).notify("Верно", {
                position: "top left",
                autoHideDelay: 2000,
                arrowShow: false,
                className: 'success',
                gap: 1
            });
            $(this).removeClass("errtextbox");
            $(this).addClass("suctextbox");
            flags[4] = true;

        }
    });
    $("#create-email-button").click(function () {
        if (flags[0] && flags[1] && flags[2] && flags[3] && flags[4]) {
            if ($("#policy-checkbox").prop('checked')) {
                load_yes()
                var encrypt = new JSEncrypt();
                encrypt.setPublicKey($("#pubkey").val());
                $.ajax({
                    url: create_email_servlet_path,
                    type: "POST",
                    dataType: "html",
                    data: "key=" + key + "&email=" + email + "&name=" + name + "&password=" + encrypt.encrypt(password),
                    success: function (resultText) {
                        load_no()
                        if (resultText === "1") {
                            swal.fire({
                                title: "Email создан",
                                html: "Почтовый ящик ScrypMail успешно создан. Вы можете войти в него с помощью нашего " +
                                    "<a href='https://mail.scryp.ru/' target='_blank'>почтового клиента</a>.",
                                icon: "success",
                                footer: '<a style="color: rgb(72, 31, 187); cursor: pointer; font-size: 20px" href="https://www.scryp.ru/user/feedback">Вопросы? Обратитесь к нам</a>',
                            })
                            for (var i = 0; i < arr.length; i++) {
                                $(arr[i]).removeClass("suctextbox");
                                $(arr[i]).removeClass("errtextbox");
                                $(arr[i]).val("");
                                flags[i] = false;
                                window.onbeforeunload = function () {
                                    return false;
                                };
                            }
                            $("#policy-checkbox").prop('checked', false);
                        } else if (resultText === "email-incorrect") {
                            ntf("Ошибка", "Выбранный вами email некорректен", "error")
                        } else if (resultText === "email-exists") {
                            ntf("Ошибка", "Выбранный вами email уже существует", "error")
                        } else if (resultText === "email-forbidden") {
                            ntf("Ошибка", "Выбранный вами email недоступен", "error")
                        } else if (resultText === "incorrect-key") {
                            ntf("Ошибка", "Ваш ключ активации недействителен", "error")
                        } else {
                            ntf("Ошибка", "Произошла ошибка во время создания почтового ящика ScrypMail. " +
                                "Попробуйте ещё раз позже, либо свяжитесь с нами", "error")
                        }
                    },
                    error: function (response) {
                        load_no()
                        serverError();
                    }
                });
            } else {
                $(this).notify("Вы не ознакомились с условиями", {
                    position: "top center",
                    autoHideDelay: 5000,
                    arrowShow: false,
                    className: 'error',
                    gap: 1
                });
            }
        } else {
            $(this).notify("Форма заполнена некорректно", {
                position: "top center",
                autoHideDelay: 5000,
                arrowShow: false,
                className: 'error',
                gap: 1
            });
        }
    });
}