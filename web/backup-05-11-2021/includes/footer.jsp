<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.util.Date" %>
<%!
    public static String redirectTo(String url) {
        String to = url;
        try {
            to = URLEncoder.encode(url, StandardCharsets.UTF_8.toString());
        }catch (Exception e){
            e.printStackTrace();
        }
        return "https://r.scryp.ru?url=" + to;
    }
%>
<footer class="footer">
    <div class="footer_top">
        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-md-6 col-lg-3">
                    <div class="footer_widget wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s">
                        <div class="footer_logo">
                            <a href="${pageContext.request.contextPath}/">
                                <img src="${pageContext.request.contextPath}/vectors/scryp_logo.svg"
                                     id="logo-footer" alt="">
                            </a>
                        </div>
                        <p>Любое использование либо копирование материалов или подборки материалов сайта,
                            элементов дизайна и оформления допускается лишь с разрешения правообладателя и только со
                            ссылкой на источник:
                            <a href="${pageContext.request.contextPath}/"
                               title="Scryp.ru - сайт проектов и сервисов Николая Скрипниченко" style="cursor: pointer">www.scryp.ru</a>
                        </p>
                        <p>
                            <a href="mailto:support@scryp.ru">support@scryp.ru</a> <br>
                            <a href="tel:+79165814024">+7 916 581 40 24</a> <br>
                            <a href="${pageContext.request.contextPath}/">Николай Скрипниченко</a><br><br>
                            <a href="https://www.scryp.ru/policies/privacy-policy"
                               title="Политика конфиденциальности и обработки персональных данных"
                               style="cursor: pointer">
                                • Политика конфиденциальности</a><br>
                            <a href="https://www.scryp.ru/policies/terms"
                               title="Пользовательское соглашение" style="cursor: pointer">
                                • Пользовательское соглашение</a><br><br>
                            Icons made by <a href="<%= redirectTo("https://www.freepik.com/")%>" target="_blank"
                                             title="Freepik">Freepik</a>
                            from <a href="<%= redirectTo("https://www.flaticon.com/")%>" target="_blank"
                                    title="Flaticon">www.flaticon.com</a>.<br>
                            Site's template made by <a href="<%= redirectTo("https://colorlib.com")%>" target="_blank"
                                                       title="Colorlib">Colorlib</a>.<br>
                            Template's changes and site's backend made by <a href="${pageContext.request.contextPath}/">Nikolay Skripnichenko</a>.
                        </p>
                        <div class="socail_links">
                            <ul>
                                <li>
                                    <a href="<%= redirectTo("https://vk.com/nick_scryp")%>" target="_blank">
                                        <i class="fa fa-vk"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="<%= redirectTo("https://wa.me/79165814024")%>" target="_blank">
                                        <i class="fa fa-whatsapp"></i>
                                    </a>
                                </li>

                                <li>
                                    <a href="<%= redirectTo("https://twitter.com/ClausWeiter")%>" target="_blank">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="<%= redirectTo("https://www.instagram.com/nick_scryp/")%>" target="_blank">
                                        <i class="fa fa-instagram"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="<%= redirectTo("https://www.t.me/nikolay_skrip")%>" target="_blank">
                                        <i class="fa fa-telegram"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>
                <div class="col-xl-2 col-md-6 col-lg-2">
                    <div class="footer_widget wow fadeInUp" data-wow-duration="1.1s" data-wow-delay=".4s">
                        <h3 class="footer_title">
                            Scryp
                        </h3>
                        <ul>
                            <li><a href="https://mail.scryp.ru/" target="_blank">Почта <i
                                    class="fa fa-envelope-o"></i></a></li>
                            <li><a href="https://app.scryp.ru/" target="_blank">Программы <i
                                    class="fa fa-code"></i></a></li>
                            <li><a href="https://cloud.scryp.ru/" target="_blank">Облако <i
                                    class="fa fa-cloud"></i></a></li>
                            <li><a href="https://test.scryp.ru/" target="_blank">Тесты <i
                                    class="fa fa-pencil-square-o"></i></a></li>
                            <li><a href="${pageContext.request.contextPath}/user/feedback" style="cursor: pointer">Обратная
                                связь <i class="fa fa-comments-o"></i></a></li>
                            <li><a href="${pageContext.request.contextPath}/services/" style="cursor: pointer">Все сервисы <i class="fa fa-arrow-right"></i></a></li>
                        </ul>

                    </div>
                </div>
                <div class="col-xl-3 col-md-6 col-lg-3">
                    <div class="footer_widget wow fadeInUp" data-wow-duration="1.2s" data-wow-delay=".5s">
                        <h3 class="footer_title">
                            TutRes.com
                        </h3>
                        <ul>
                            <li><a href="https://www.tutres.com/" target="_blank">На Главную <i
                                    class="fa fa-arrow-right"></i></a></li>
                            <li><a href="https://www.tutres.com/subjects/" target="_blank"
                                   style="cursor: pointer">Предметы <i class="fa fa-graduation-cap"></i></a></li>
                            <li><a href="https://www.tutres.com/auth/sign-in" target="_blank" id="footer_login"
                                   style="cursor: pointer">Вход в систему <i class="fa fa-sign-in"></i></a></li>
                            <li><a href="https://www.tutres.com/auth/create-account" target="_blank" id="footer_reg"
                                   style="cursor: pointer">Создать аккаунт <i class="fa fa-user-plus"></i></a></li>
                            <li><a href="https://www.tutres.com/auth/forget-password" target="_blank" id="footer_cp"
                                   style="cursor: pointer">Восстановить пароль <i class="fa fa-refresh"></i></a></li>
                            <li><a href="https://www.tutres.com/news/" style="cursor: pointer" target="_blank">Новости
                                <i class="fa fa-newspaper-o"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-xl-4 col-md-6 col-lg-4">
                    <div class="footer_widget wow fadeInUp" data-wow-duration="1.3s" data-wow-delay=".6s">
                        <h3 class="footer_title">
                            Sitemap
                        </h3>
                        <form action="javascript:void(0);" id="footer_code_form"
                              class="newsletter_form">
                            <input id="footer_code_input" type="text" required="required"
                                   maxlength="75" placeholder="URL вашего web-сайта..." style="padding-right: 120px"
                                   value="<%=request.getParameter("d") != null ? request.getParameter("d") : ""%>">
                            <button id="footer_code_button" type="submit">Создать</button>
                        </form>
                        <p class="newsletter_text">Создайте бесплатно Google sitemap.xml файл. В индекс включается <span
                                style="text-decoration: underline">не более 100 страниц</span>. <a
                                href="${pageContext.request.contextPath}/sitemaps/about">Подробнее о sitemap</a><br><br>
                            Вопросы? Напишите мне через <a href="${pageContext.request.contextPath}/user/feedback">форму
                                обратной связи</a><br>Если нашли ошибку в тексте, выделите её и нажмите Ctrl+Enter</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copy-right_text wow fadeInUp" data-wow-duration="1.4s" data-wow-delay=".3s">
        <div class="container">
            <div class="footer_border"></div>
            <div class="row">
                <div class="col-xl-12">
                    <p class="copy_right text-center">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<%=new Date().getYear() + 1900%>
                        <a href="${pageContext.request.contextPath}/">Nikolay Skripnichenko, Scryp.ru</a>. All rights
                        reserved.
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
                </div>
            </div>
        </div>
    </div>
</footer>

<textarea id="pubkey_footer" style="display: none">
<jsp:include page="/security/pubkey.pem"/>
</textarea>

<script>

    $("#footer_code_form").submit(function (e) {
        document.location = '${pageContext.request.contextPath}/sitemaps/?d=' + $("#footer_code_input").val();
    })

    $(window).keydown(function (e) {
        if (e.ctrlKey && e.which === 13) {
            var len = window.getSelection().toString().length
            if (len > 0 && len <= 64) {
                load_yes()
                var plain = "Ошибка в тексте:<br>" + window.getSelection().toString() + "<br><br>Ссылка: " + window.location
                var encrypt = new JSEncrypt();
                encrypt.setPublicKey($("#pubkey_footer").val());
                var text = encrypt.encrypt(plain)
                $.ajax({
                    url: feed_servlet_path,
                    type: "POST",
                    dataType: "html",
                    data: "text=" + text,
                    success: function (resultText) {
                        load_no()
                        if (resultText.toString() === "success") ntf("Отправлено", "Текст с ошибкой успешно отправлен", "success")
                        else ntf("Произошла ошибка", "К сожалению, мы не смогли получить ваше уведомление", "error")
                    },
                    error: function (response) {
                        load_no()
                        ntf("Произошла ошибка", "К сожалению, мы не смогли получить ваше уведомление", "error")
                    }
                });
            }else if (len > 0)ntf("Невозможно отправить", "Сообщение длиннее 64 символов не может быть отправлено", "error")
        }
    });
</script>