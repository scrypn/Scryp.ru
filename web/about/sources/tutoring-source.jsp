<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.Period" %>
<%@ page import="java.time.LocalDate" %>
<%!
    public static String redirectTo(String url) {
        String to = url;
        try {
            to = URLEncoder.encode(url, StandardCharsets.UTF_8.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "https://r.scryp.ru?url=" + to;
    }
%>
<%
    LocalDate l = LocalDate.of(2004, 9, 26);
    LocalDate now = LocalDate.now();
    Period diff = Period.between(l, now);
%>
<section class="blog_area single-post-area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 posts-list" style="margin-right: auto; margin-left: auto">
                <div class="single-post">
                    <div class="feature-img wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".15s" align="center">
                        <img class="img-fluid" id="img-news-viewer"
                             src="${pageContext.request.contextPath}/img/author.jpg" style="border-radius: 40px" alt=""
                             width="211" height="250">
                    </div>
                    <div class="blog_details wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s">
                        <h2 id="title-news-viewer" style="font-size: 38px; font-weight: 400; text-align: center"><a
                                style="color: #aa01d9; font-size: 38px; font-weight: 400; font-family: 'Roboto', sans-serif; font-style: normal;"
                                href="${pageContext.request.contextPath}/about/tutoring">Репетиторские данные</a></h2>
                        <ul class="blog-info-link mt-3 mb-4">
                            <li><a href="${pageContext.request.contextPath}/"><i class="fa fa-user"></i> Николай
                                Скрипниченко</a></li>
                        </ul>
                        <p class="excert" id="text-news-viewer" style="margin-bottom: 0">
                            Скрипниченко Николай Сергеевич, 26.09.2004 (<%= diff.getYears()%> лет), студент Бауманского
                            инженерного лицея №1580 при МГТУ им. Н.Э.Баумана
                            (<a href="https://cloud.scryp.ru/index.php/s/zzoc7SDnsiYdLHi" target="_blank">подтверждающий
                            документ</a>), основатель портала онлайн-репетиторства <a href="https://www.tutres.com/" target="_blank">TutRes.com</a><br>
                            Опыт репетиторства: <i>1 год</i><br>
                            Формат занятий: <i>онлайн</i><br>
                            Предпочитаемый контингент учащихся: <i>7-9 классы</i><br>
                            Цена: <i>400-500 рублей / 1 час (обсуждается дополнительно)</i><br>
                            Преподаваемые предметы:<br>
                        </p>
                        <p style="margin-left: 20px">
                            <span style="text-decoration: underline">Математика</span><br>
                            - подготовка к контрольным и самостоятельным работам<br>
                            - повышение общего уровня знаний учащегося<br>
                            - подготовка к ОГЭ и вступительным экзаменам в Бауманский лицей<br>
                            <span style="text-decoration: underline">Программирование</span><br>
                            - введение в сферу информационных технологий<br>
                            - выявление предрасположенности к дальнейшему развитию учащегося в сфере IT<br>
                            - подготовка к ОГЭ по информатике<br>
                            - создание программ на рейтинговых языках программирования Java и Python<br>
                            - работа с базой данных MySQL и таблицами Excel<br>
                            - создание сайтов с технологией Java Servlet и веб-контейнером Tomcat<br>
                        </p>
                        <p>
                            Для дальнейшего обсуждения потенциального сотрудничества, вы можете использовать
                            <a href="${pageContext.request.contextPath}/user/feedback">форму обратной связи</a>, либо
                            мои
                            <a href="${pageContext.request.contextPath}/contact/">контактные данные</a>. Спасибо за
                            внимание.
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
                                <a href="mailto:nick@scryp.ru" target="_blank">
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