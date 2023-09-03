<div class="job_details_area" id="create-email">
    <div class="container">
        <div class="row">
            <div class="apply_job_form white-bg" style="margin-right: auto; margin-left: auto; max-width: 900px">
                <h4 style="font-size: 38px; font-weight: 400; text-align: center" class="wow fadeInLeft"
                    data-wow-duration="1s" data-wow-delay=".1s">
                    <a class="index_title_links" href="${pageContext.request.contextPath}/create-email/">Новый ящик ScrypMail</a></h4>
                <h5 style="color: #00D363; text-align: center" class="wow fadeInRight" data-wow-duration="1s"
                    data-wow-delay=".15s">
                    Здесь вы можете создать почтовый ящик на домене <a href="https://mail.scryp.ru/" target="_blank"
                                                                       style="text-decoration: underline">@scrypmail.ru</a>.
                    Примечание: для создания почты
                    необходим ключ активации, который может быть предоставлен только администратором Scryp.ru</h5>
                <form novalidate method="POST" autocomplete="on" id="feedback_form" action="javascript:void(0);">
                    <div class="row">
                        <div class="col-md-2 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s"
                             style="margin-top: 20px">
                            <div class="mein-labels">Ключ</div>
                            <div class="input_field">
                                <input type="text" class="mein-inputs" style="text-align: center; padding-right: 5px;
                                padding-left: 5px" maxlength="6" id="create-email-key" name="key"
                                value="<%=request.getParameter("key") != null ? request.getParameter("key") : ""%>">
                            </div>
                        </div>
                        <div class="col-md-5 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s"
                             style="margin-top: 20px">
                            <div class="mein-labels">Как вас зовут?</div>
                            <div class="input_field">
                                <input type="text" class="mein-inputs" style="text-transform: capitalize" maxlength="50" id="create-email-name"
                                       name="name">
                            </div>
                        </div>
                        <div class="col-md-5 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s"
                             style="margin-top: 20px">
                            <div class="mein-labels">Придумайте email</div>
                            <div class="loader-input" id="loader-input-email"></div>
                            <div class="input_field">
                                <input type="text" class="mein-inputs" maxlength="64"
                                       style="text-align: right; text-transform: lowercase; padding-right: 110px"
                                       id="create-email-box" name="box">

                                <input type="text" class="inline-input-text" readonly
                                       style="width: 100px;height: 50px; margin: 5px; padding: 10px 3px;" value="@scrypmail.ru">
                            </div>
                        </div>
                        <div class="col-md-6 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s" style="margin-top: 20px">
                            <div class="mein-labels">Пароль</div>
                            <div class="input_field" style="position: relative">
                                <input type="password" class="mein-inputs" required maxlength="20" id="create-email-pass"
                                       name="pass"/>
                                <a class="password-control" id="password-control-1"></a>
                                <div class="psw-validate">
                                    <p id="letter" class="invalid"><i id="letter-status" class="fa fa-times"></i>
                                        Строчная буква</p>
                                    <p id="capital" class="invalid"><i id="capital-status" class="fa fa-times"></i>
                                        Заглавная буква</p>
                                    <p id="number" class="invalid"><i id="number-status" class="fa fa-times"></i> Цифра
                                    </p>
                                    <p id="length" class="invalid"><i id="length-status" class="fa fa-times"></i> От 8
                                        до 20 символов</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s" style="margin-top: 20px">
                            <div class="mein-labels">Повторите пароль</div>
                            <div class="input_field" style="position: relative">
                                <input type="password" class="mein-inputs" required maxlength="20" id="create-email-pass-2"
                                       name="pass"/>
                                <a class="password-control" id="password-control-2"></a>
                            </div>
                        </div>
                        <div class="col-md-8 wow fadeInRight" data-wow-duration="1s" data-wow-delay=".25s">
                            <!--<div><input type="checkbox" id="policy-checkbox"/></div>-->
                            <div style="margin-left: 15px; display: inline-block">Я ознакомился(лась) и принимаю условия
                                положений: "<a href="${pageContext.request.contextPath}/policies/privacy-policy"
                                               style="cursor: pointer; color: #00aced" target="_blank">
                                    Политика конфиденциальности и обработки персональных данных</a>" и
                                "<a href="${pageContext.request.contextPath}/policies/terms" style="cursor: pointer; color: #00aced" target="_blank">Пользовательское соглашение</a>"
                            </div>
                        </div>
                        <div class="col-md-1 wow fadeInRight" data-wow-duration="1s" data-wow-delay=".25s">
                            <div style="margin: 20px 0 0 15px"><input type="checkbox" id="policy-checkbox"/>
                                <label for="policy-checkbox" class="check-box"></label>
                            </div>
                        </div>
                        <div class="col-md-4 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s"
                             style="margin-right: auto; margin-left: auto">
                            <button class="buttons" id="create-email-button" style="margin: 35px 0 0 0; width: 100%">
                                Создать
                            </button>
                        </div>
                        <div class="col-md-12 wow fadeInUp" style="margin-top: 50px"
                             data-wow-duration="1s" data-wow-delay=".3s">
                            <div align="center" style="color: #00D363; font-size: 15px">
                                <a href="${pageContext.request.contextPath}/mail-server/" style="text-decoration: underline">Данные о почтовом сервере</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<textarea id="pubkey" style="display: none">
<jsp:include page="/security/pubkey.pem"/>
</textarea>
<script>Valid_PSW();</script>
<script>Valid_EmailCreator();</script>
<script>
    $(document).ready(function () {
        $("#password-control-1").mousedown(function () {
            $(this).addClass('view');
            $('#create-email-pass').attr('type', 'text');
            $(document).one("mouseup", function () {
                $("#password-control-1").removeClass('view');
                $('#create-email-pass').attr('type', 'password');
                return false;
            });
            return false;
        }).on('touchstart', function () {
            $(this).addClass('view');
            $('#create-email-pass').attr('type', 'text');
            $(this).on('touchend', function () {
                $("#password-control-1").removeClass('view');
                $('#create-email-pass').attr('type', 'password');
                return false;
            });
            return false;
        });

        $("#password-control-2").mousedown(function () {
            $(this).addClass('view');
            $('#create-email-pass-2').attr('type', 'text');
            $(document).one("mouseup", function () {
                $("#password-control-2").removeClass('view');
                $('#create-email-pass-2').attr('type', 'password');
                return false;
            });
            return false;
        }).on('touchstart', function () {
            $(this).addClass('view');
            $('#create-email-pass-2').attr('type', 'text');
            $(this).on('touchend', function () {
                $("#password-control-2").removeClass('view');
                $('#create-email-pass-2').attr('type', 'password');
                return false;
            });
            return false;
        });
    });
</script>

