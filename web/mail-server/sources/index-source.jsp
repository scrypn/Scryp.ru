<div class="job_details_area" id="info-mail-server">
    <div class="container">
        <div class="row">
            <div class="apply_job_form white-bg" style="margin-right: auto; margin-left: auto; max-width: 900px">
                <h4 style="font-size: 38px; font-weight: 400; text-align: center" class="wow fadeInLeft"
                    data-wow-duration="1s" data-wow-delay=".1s">
                    <a class="index_title_links" href="${pageContext.request.contextPath}/create-email/">Почтовый сервер ScrypMail</a></h4>
                <h5 style="color: #00D363; text-align: center" class="wow fadeInRight" data-wow-duration="1s"
                    data-wow-delay=".15s">
                    В этом разделе указаны важные данные о почтовом сервере <a href="https://mail.scryp.ru/" target="_blank"
                                                                               style="text-decoration: underline">ScrypMail</a>,
                    необходимые вам для входа в ваш почтовый ящик. Если по какой-то причине
                    данные являются недействительными, сообщите об этом через <a href="${pageContext.request.contextPath}/user/feedback">
                    форму обратной связи</a>.</h5>
                <form novalidate method="POST" autocomplete="on" id="feedback_form" action="javascript:void(0);">
                    <div class="row">
                        <div class="col-md-4 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s"
                             style="margin-top: 20px">
                            <div class="mein-labels">Сервер IMAP</div>
                            <div class="input_field">
                                <input type="text" class="mein-inputs" readonly value="srv.scryp.ru">
                            </div>
                        </div>
                        <div class="col-md-4 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s"
                             style="margin-top: 20px">
                            <div class="mein-labels">Порт IMAP</div>
                            <div class="input_field">
                                <input type="text" class="mein-inputs" readonly value="993">
                            </div>
                        </div>
                        <div class="col-md-4 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s"
                             style="margin-top: 20px">
                            <div class="mein-labels">Безопасность IMAP</div>
                            <div class="input_field">
                                <input type="text" class="mein-inputs" readonly value="SSL/TLS">
                            </div>
                        </div>
                        <div class="col-md-4 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s"
                             style="margin-top: 20px">
                            <div class="mein-labels">Сервер SMTP</div>
                            <div class="input_field">
                                <input type="text" class="mein-inputs" readonly value="srv.scryp.ru">
                            </div>
                        </div>
                        <div class="col-md-4 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s"
                             style="margin-top: 20px">
                            <div class="mein-labels">Порт SMTP</div>
                            <div class="input_field">
                                <input type="text" class="mein-inputs" readonly value="587">
                            </div>
                        </div>
                        <div class="col-md-4 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s"
                             style="margin-top: 20px">
                            <div class="mein-labels">Безопасность SMTP</div>
                            <div class="input_field">
                                <input type="text" class="mein-inputs" readonly value="STARTTLS">
                            </div>
                        </div>
                        <div class="col-md-4 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".25s"
                             style="margin-right: auto; margin-left: auto">
                            <a class="buttons"
                                    href="${pageContext.request.contextPath}/mail-server/create-account"
                                    style="margin: 35px 0 0 0; width: 100%; text-transform: none">
                                Создать почтовый ящик
                            </a>
                        </div>
                        <div class="col-md-12 wow fadeInUp" style="margin-top: 50px"
                             data-wow-duration="1s" data-wow-delay=".25s">
                            <div align="center" style="color: #00D363; font-size: 15px">
                                *Протокол POP3 не поддерживается
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>