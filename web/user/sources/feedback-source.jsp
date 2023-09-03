<div class="job_details_area" id="feedback_div">
    <div class="container">
        <div class="row">
            <div class="apply_job_form white-bg" style="margin-right: auto; margin-left: auto; max-width: 900px">
                <h4 style="font-size: 38px; font-weight: 400; text-align: center" class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".1s">
                    <a class="index_title_links" href="${pageContext.request.contextPath}/user/feedback">Обратная связь</a></h4>
                <h5 style="color: #00D363; text-align: center" class="wow fadeInRight" data-wow-duration="1s" data-wow-delay=".15s">
                    Вопросы? Проблемы? Предложения? Уточнения? Пишите мне здесь или на почту <a href="mailto:support@scryp.ru">support@scryp.ru</a></h5>
                <form novalidate method="POST" autocomplete="on" id="feedback_form" action="javascript:void(0);">
                    <div class="row">
                        <div class="col-md-6 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s" style="margin-top: 20px">
                            <div class="mein-labels">Как вас зовут?</div>
                            <div class="input_field">
                                <input type="text" class="mein-inputs" style="text-transform: capitalize" maxlength="50" id="from_name_feedback" name="from_name_feedback">
                            </div>
                        </div>
                        <div class="col-md-6 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".25s" style="margin-top: 20px">
                            <div class="mein-labels">Ваш Email <span style="font-size: 12px">(необходим для ответа на письмо)</span></div>
                            <div class="input_field">
                                <input type="email" class="mein-inputs" style="text-transform: lowercase" maxlength="50" id="from_email_feedback" name="from_email_feedback">
                            </div>
                        </div>
                        <div class="col-md-12 wow fadeInRight" data-wow-duration="1s" data-wow-delay=".3s" style="margin-top: 20px">
                            <div class="mein-labels">Письмо <span style="font-size: 12px">(100 - 10.000 символов) / <span id="feedback-length">0</span></span></div>
                            <div class="input_field">
                                <textarea id="feedback_textarea_page" class="mein-inputs" style="min-height: 100px; max-height: 400px"
                                           maxlength="10000" placeholder="Введите текст письма..."></textarea>
                            </div>
                        </div>
                        <div class="col-md-8 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".35s" style="margin-right: auto; margin-left: auto">
                            <button class="buttons" id="send_footer_page"  style="margin: 35px 0 0 0; width: 100%">Отправить</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>valid_feedback();</script>
