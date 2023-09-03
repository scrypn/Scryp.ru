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
<section class="blog_area single-post-area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 posts-list" style="margin-right: auto; margin-left: auto">
                <div class="single-post">
                    <div class="feature-img wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".15s" align="center">
                        <img class="img-fluid" id="img-news-viewer" src="${pageContext.request.contextPath}/img/author.jpg" style="border-radius: 40px" alt="" width="211" height="250">
                    </div>
                    <div class="blog_details wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s">
                        <h2 id="title-news-viewer" style="font-size: 38px; font-weight: 400; text-align: center"><a
                                style="color: #aa01d9; font-size: 38px; font-weight: 400; font-family: 'Roboto', sans-serif; font-style: normal;"
                                href="${pageContext.request.contextPath}/about/">Немного обо мне и сервисах Scryp.ru</a></h2>
                        <ul class="blog-info-link mt-3 mb-4">
                            <li><a href="${pageContext.request.contextPath}/"><i class="fa fa-user"></i> Николай Скрипниченко</a></li>
                        </ul>
                        <p class="excert" id="text-news-viewer">
                            Всем привет! Меня зовут Николай Скрипниченко, я - программист и репетитор (всё о моей репетиторской деятельности вы можете узнать <a href="${pageContext.request.contextPath}/about/tutoring">здесь</a>).
                            <a href="${pageContext.request.contextPath}/">Scryp.ru</a>
                            - web-портал моих достижений в области IT, содержащий также и утилиты, полезные для любого разработчика (будь то
                            <a href="${pageContext.request.contextPath}/numsys/">конвертер систем счисления</a> или
                            <a href="${pageContext.request.contextPath}/java/">Java онлайн-компилятор</a>). Ниже описаны все полезные разделы сайта и сервисы:<br><br>

                            <a href="https://www.tutres.com/" target="_blank">TutRes.com</a> - портал онлайн-репетиторства, разработанный мной для помощи репетиторам,
                            чья деятельность пострадала от последствий пандемии<br>
                            <a href="https://mail.scryp.ru/" target="_blank">ScrypMail</a> - бесплатный почтовый клиент для почты <a href="https://mail.scryp.ru/" target="_blank">@scrypmail.ru</a>,
                            которую вы можете создать <a href="${pageContext.request.contextPath}/mail-server/create-account">здесь</a><br>
                            <a href="https://app.scryp.ru/" target="_blank">ScrypApp</a> - открытая база программ и приложений из моих личных разработок<br>
                            <a href="https://test.scryp.ru/" target="_blank">ScrypTest</a> - платформа для выполнения курсов и тестов<br>
                            <a href="https://cloud.scryp.ru/" target="_blank">ScrypCloud</a> - Облако для хранения данных, имеет встроенные сервисы ScrypMail, ScrypApp и ScrypTest. Регистрация доступна
                            только для владельцев почтового адреса <a href="https://mail.scryp.ru/" target="_blank">@scrypmail.ru</a><br>
                            <a href="https://sm.scryp.ru/">ScrypSitemaps</a> - бесплатный онлайн-генератор sitemap.xml файлов для вашего сайта. Подробнее о sitemap
                            <a href="${pageContext.request.contextPath}/sitemaps/about">здесь</a><br>
                            <a href="${pageContext.request.contextPath}/numsys/">Конвертер систем счисления</a> - простой в использовании переводчик чисел в другие системы счисления<br>
                            <a href="${pageContext.request.contextPath}/py/">ScrypPY</a>,
                            <a href="${pageContext.request.contextPath}/cpp/">ScrypC++</a>,
                            <a href="${pageContext.request.contextPath}/java/">ScrypJava</a> - онлайн-компиляторы,
                            позволяющие программировать на языках Python, C++ и Java прямо в вашем браузере<br>
                            <a href="https://chat.scryp.ru/" target="_blank">ScrypChat</a> - онлайн-мессенджер для владельцев почты <a href="https://mail.scryp.ru/" target="_blank">@scrypmail.ru</a><br>
                            Все проекты и сервисы вы можете найти <a href="${pageContext.request.contextPath}/services/">здесь</a><br><br>

                            Надеюсь, вы останетесь довольны порталом. Если у вас есть какие-то вопросы, пожелания или хотите сообщить об ошибке, вы можете связать со мной, используя:<br><br>
                            <a href="${pageContext.request.contextPath}/user/feedback">форму обратной связи</a><br>
                            email: <a href="mailto:support@scryp.ru">support@scryp.ru</a><br>
                            номер: <a href="tel:+79165814024">+7 916 581 40 24</a>
                        </p>
                    </div>
                </div>
                <div class="navigation-top wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".25s">
                    <div class="d-sm-flex justify-content-between text-center">
                        <p id="news-date">01.01.2022</p>
                        <ul class="social-icons">
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
                                <a href="<%= redirectTo("https://www.t.me/nikolay_skrip")%>" target="_blank">
                                    <i class="fa fa-telegram"></i>
                                </a>
                            </li>
                            <li>
                                <a href="mailto:support@scryp.ru" target="_blank">
                                    <i class="fa fa-envelope-o"></i>
                                </a>
                            </li>
                            <li>
                                <a href="tel:+79165814024" target="_blank">
                                    <i class="fa fa-phone"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="blog-author wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".3s">
                    <div class="media align-items-center">
                        <img src="${pageContext.request.contextPath}/vectors/favicon.svg" alt="" width="90" height="90">
                        <div class="media-body">
                            <a href="${pageContext.request.contextPath}/">
                                <h4>Scryp.ru</h4>
                            </a>
                            <p>сайт проектов и сервисов Николая Скрипниченко</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>