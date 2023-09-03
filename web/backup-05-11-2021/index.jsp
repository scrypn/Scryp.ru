<html lang="ru">
<head>
    <meta name="description" content="Scryp.ru - сайт проектов и сервисов Николая Скрипниченко">
    <jsp:include page="includes/links.jsp"/>
    <title>Scryp.ru - сайт проектов и сервисов Николая Скрипниченко</title>
</head>
<body>
<div class="full_code">
    <jsp:include page="includes/header.jsp"/>
    <jsp:include page="includes/slider.jsp"/>
    <script>$("#scryp-title-slider-block").show()</script>
    <div class="featured_candidates_area wow fadeInLeft" id="projects" data-wow-duration="1s" data-wow-delay=".25s">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section_title text-center mb-40">
                        <h3><a class="index_title_links" href="${pageContext.request.contextPath}/services/">Мои проекты и сервисы</a></h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="candidate_active owl-carousel">
                        <div class="single_candidates text-center">
                            <div class="thumb">
                                <img src="vectors/favicon.svg" width="110" height="110" alt="">
                            </div>
                            <a href="${pageContext.request.contextPath}/mail-server/"><h4>Почтовый сервер</h4></a>
                            <p>www.scryp.ru/mail-server</p>
                        </div>
                        <div class="single_candidates text-center">
                            <div class="thumb">
                                <img src="vectors/favicon.svg" width="110" height="110" alt="">
                            </div>
                            <a href="${pageContext.request.contextPath}/numsys/"><h4>NumSys Конвертер</h4></a>
                            <p>www.scryp.ru/numsys</p>
                        </div>
                        <div class="single_candidates text-center">
                            <div class="thumb">
                                <img src="vectors/favicon.svg" width="110" height="110" alt="">
                            </div>
                            <a href="https://sm.scryp.ru/"><h4>ScrypSitemaps</h4></a>
                            <p>sm.scryp.ru</p>
                        </div>
                        <div class="single_candidates text-center">
                            <div class="thumb">
                                <img src="vectors/favicon.svg" width="110" height="110" alt="">
                            </div>
                            <a href="${pageContext.request.contextPath}/ncp/"><h4>Приложение NCP</h4></a>
                            <p>www.scryp.ru/ncp</p>
                        </div>
                        <div class="single_candidates text-center">
                            <div class="thumb" style="font-size: 110px; color: #b4b4fc">
                                <i class="fa fa-plus-square-o"></i>
                            </div>
                            <a href="${pageContext.request.contextPath}/services/"><h4>Показать больше</h4></a>
                            <p>www.scryp.ru/services</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="/about/sources/index-source.jsp"/>
    <jsp:include page="/user/sources/feedback-source.jsp"/>
    <div class="testimonial_area wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".3s">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section_title text-center mb-40">
                        <h3>Пользователю</h3>
                    </div>
                </div>
                <div class="col-xl-12">
                    <div class="testmonial_active owl-carousel">
                        <div class="single_carousel">
                            <div class="row">
                                <div class="col-lg-11">
                                    <div class="single_testmonial d-flex align-items-center">
                                        <div class="info">
                                            <p>
                                                Данные о почтовом сервере ScrypMail вы можете найти
                                                <a href="${pageContext.request.contextPath}/mail-server/">здесь</a>.
                                            </p>
                                            <span>- <a href="">Scryp.ru</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_carousel">
                            <div class="row">
                                <div class="col-lg-11">
                                    <div class="single_testmonial d-flex align-items-center">
                                        <%--<div class="thumb">
                                            <img src="vectors/favicon.svg" width="228" height="228" alt="">
                                            <div class="quote_icon">
                                                <i style="margin-top: 40%" class="fa fa-quote-right"></i>
                                            </div>
                                        </div>--%>
                                        <div class="info">
                                            <p>
                                                Веб-мессенджер <a href="https://chat.scryp.ru" target="_blank">ScrypChat</a> позволит вам с лёгкостью общаться в Интернете прямо из вашего браузера.
                                            </p>
                                            <span>- <a href="">Scryp.ru</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_carousel">
                            <div class="row">
                                <div class="col-lg-11">
                                    <div class="single_testmonial d-flex align-items-center">
                                        <div class="info">
                                            <p>
                                                Теперь наша <a href="${pageContext.request.contextPath}/user/feedback">форма обратной связи</a>
                                                поддерживает двойное шифрование RSA, что гарантирует полную безопасность ваших писем.
                                            </p>
                                            <span>- <a href="">Scryp.ru</a> от 11.08.21</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_carousel">
                            <div class="row">
                                <div class="col-lg-11">
                                    <div class="single_testmonial d-flex align-items-center">
                                        <div class="info">
                                            <p>
                                                <a href="https://2048.scryp.ru/" target="_blank">2048</a> - аналог знаменитой игры 1024, распространяющийся
                                                с открытым исходным кодом.<br>Всем советую попробовать, развивает логическое мышление.<br>Ссылка:
                                                <a href="https://2048.scryp.ru/" target="_blank">https://2048.scryp.ru/</a>
                                            </p>
                                            <span>- <a href="">Scryp.ru</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_carousel">
                            <div class="row">
                                <div class="col-lg-11">
                                    <div class="single_testmonial d-flex align-items-center">
                                        <div class="info">
                                            <p>
                                                Каждую ночь, с 20:00 до 6:00, верхушка сайта сменяется на
                                                <a href="${pageContext.request.contextPath}/sky/">звёздное небо</a>. Это
                                                нечто!
                                            </p>
                                            <span>- <a href="">Scryp.ru</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_carousel">
                            <div class="row">
                                <div class="col-lg-11">
                                    <div class="single_testmonial d-flex align-items-center">
                                        <div class="info">
                                            <p>Есть вопросы, предложения, замечание? Пишите мне, и я с радостью вам
                                                отвечу!</p>
                                            <p>Мои контакты <i class="fa fa-address-card-o"></i></p>
                                            <p>
                                            <ul>
                                                <li><a href="${pageContext.request.contextPath}/user/feedback">форма обратной
                                                    связи</a></li>
                                                <li>почтовый адрес <a
                                                        href="mailto:support@scryp.ru">support@scryp.ru</a></li>
                                                <li>соц.сети (указаны в подвале страницы <i class="fa fa-arrow-down"></i>)</li>
                                            </ul>
                                            </p>
                                            <span>- <a href="">Николай Скрипниченко</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="includes/footer.jsp"/>
</body>
</html>
