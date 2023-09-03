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
        }catch (Exception e){
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
<div class="job_details_area" id="feedback_div">
    <div class="container">
        <div class="row">
            <div class="apply_job_form white-bg" style="margin-right: auto; margin-left: auto; max-width: 900px">
                <h4 style="font-size: 38px; font-weight: 400; text-align: center" class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".1s">
                    <a class="index_title_links" href="${pageContext.request.contextPath}/contact/">Контактная информация</a></h4>
                <h5 style="color: #00D363; text-align: center" class="wow fadeInRight" data-wow-duration="1s" data-wow-delay=".15s">Вы можете связаться со мной, используя следующие контактные данные, либо через
                    <a href="${pageContext.request.contextPath}/user/feedback" style="text-decoration: underline">форму обратной связи</a>.</h5>
                <form novalidate method="POST" autocomplete="on" id="feedback_form" action="javascript:void(0);">
                    <div class="row">
                        <div class="col-md-3 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s" style="margin-top: 20px">
                            <div class="mein-labels">Фамилия</div>
                            <div class="input_field">
                                <input type="text" class="mein-inputs" readonly value="Скрипниченко">
                            </div>
                        </div>
                        <div class="col-md-3 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s" style="margin-top: 20px">
                            <div class="mein-labels">Имя</div>
                            <div class="input_field">
                                <input type="text" class="mein-inputs" readonly value="Николай">
                            </div>
                        </div>
                        <div class="col-md-3 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s" style="margin-top: 20px">
                            <div class="mein-labels">Отчество</div>
                            <div class="input_field">
                                <input type="text" class="mein-inputs" readonly value="Сергеевич">
                            </div>
                        </div>

                        <div class="col-md-3 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s" style="margin-top: 20px">
                            <div class="mein-labels">Возраст</div>
                            <div class="input_field">
                                <input type="text" class="mein-inputs" readonly value="<%= diff.getYears()%>">
                            </div>
                        </div>

                        <div class="col-md-4 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s" style="margin-top: 20px">
                            <div class="mein-labels">Номер телефона</div>
                            <div class="input_field">
                                <input type="text" class="mein-inputs" style="cursor: pointer" onclick="window.location.href='tel:+79165814024'" readonly value="+7 (916) 581-40-24">
                            </div>
                        </div>
                        <div class="col-md-4 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s" style="margin-top: 20px">
                            <div class="mein-labels">Почта</div>
                            <div class="input_field">
                                <input type="text" class="mein-inputs" style="cursor: pointer" onclick="window.location.href='mailto:nick@scryp.ru'" readonly value="nick@scryp.ru">
                            </div>
                        </div>
                        <div class="col-md-4 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s" style="margin-bottom: 25px; margin-top: 20px">
                            <div class="mein-labels">Веб-сайт</div>
                            <div class="input_field">
                                <input type="text" class="mein-inputs" style="cursor: pointer" onclick="window.location='https://www.scryp.ru/'" readonly value="www.scryp.ru">
                            </div>
                        </div>
                    </div>
                </form>


                <div class="socail_links wow fadeInRight" data-wow-duration="1s" data-wow-delay=".25s" id="social_links_contact" style="text-align: center">
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
    </div>
</div>
