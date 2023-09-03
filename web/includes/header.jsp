<header>
    <div class="header-area">
        <div id="sticky-header" class="main-header-area" style="height: inherit">
            <div class="container-fluid " style="height: inherit">
                <div class="header_bottom_border">
                    <div class="row align-items-center" id="header-row" style="position: relative;">
                        <div id="logo-container">
                            <div class="logo" style="width: inherit; height: inherit">
                                <a href="${pageContext.request.contextPath}/" style="width: inherit">
                                    <img src="${pageContext.request.contextPath}/vectors/scryp_logo.svg"
                                         style="width: inherit; height: inherit" alt="" id="logo-header">
                                </a>
                            </div>
                        </div>
                        <div class="menuh" id="mobile_menu" title="Открыть меню">
                            <div class="hambergerIcon"></div>
                        </div>
                        <div style="position: absolute; right: 50%; margin-right: -35%; left: 15%; width: 70%;"><%--left: 50%; width: 70%; margin-left: -35%--%>
                            <div class="main-menu  d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">
                                        <li><a href="${pageContext.request.contextPath}/">Домой</a>
                                        </li>
                                        <li><a>Облако <i class="ti-angle-down"></i></a>
                                            <ul class="submenu">
                                                <li><a href="https://cloud.scryp.ru/"
                                                       target="_blank" style="cursor: pointer">Вход</a>
                                                </li>
                                                <li><a
                                                        href="https://cloud.scryp.ru/index.php/apps/registration/"
                                                        target="_blank" style="cursor: pointer">Регистрация</a></li>
                                                <li><a href="https://cloud.scryp.ru/index.php/s/5QKw4WGaoezADCB"
                                                       target="_blank" style="cursor: pointer">Файлы</a></li>
                                                <li><a href="https://app.scryp.ru/" target="_blank">Программы</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a>Почта <i class="ti-angle-down"></i></a>
                                            <ul class="submenu">
                                                <li><a href="https://mail.scryp.ru/" style="cursor: pointer"
                                                       target="_blank">Веб-клиент</a>
                                                </li>
                                                <li><a href="${pageContext.request.contextPath}/mail-server/"
                                                       style="cursor: pointer">Почтовый сервер</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/mail-server/create-account"
                                                       style="cursor: pointer">Создать уч.запись</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="https://www.tutres.com/" target="_blank">Репетиторство</a>
                                        </li>
                                        <li><a href="https://chat.scryp.ru/" target="_blank">Чат</a>
                                        </li>
                                        <li><a href="${pageContext.request.contextPath}/services/">Сервисы</a>
                                        </li>
                                        <li><a>Другое <i class="ti-angle-down"></i></a>
                                            <ul class="submenu">
                                                <li><a href="${pageContext.request.contextPath}/contact/"
                                                       style="cursor: pointer">Контактные данные</a></li>
                                                <li><a href="${pageContext.request.contextPath}/user/feedback"
                                                       style="cursor: pointer">Обратная связь</a></li>
                                                <li><a href="${pageContext.request.contextPath}/about/"
                                                       style="cursor: pointer">Коротко обо мне</a></li>
                                                <li><a href="${pageContext.request.contextPath}/about/tutoring"
                                                       style="cursor: pointer">Визитка</a></li>

                                            </ul>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 d-lg-block"
                             style="position: absolute; right: 0; padding: 0;width: fit-content">
                            <div class="Appointment" style="top: 0">
                                <div class="phone_num">
                                    <a href="${pageContext.request.contextPath}/user/feedback" id="header_feedback_img"
                                       title="Вопросы? Напишите мне.">
                                        <img src="${pageContext.request.contextPath}/vectors/message.svg"
                                             style="width: inherit; height: inherit"></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</header>
<div id="loader-ellipsis" class="lds-ellipsis">
    <div></div>
    <div></div>
    <div></div>
    <div></div>
</div>
<div id="darker"></div>