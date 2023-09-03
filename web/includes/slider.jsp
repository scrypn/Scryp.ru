<%@ page import="java.util.Date" %>
<%
    int h = new Date().getHours();
    String param = request.getParameter("theme");
    String theme;
    if ((param != null) && (param.equals("dark") || param.equals("light"))) {
        theme = param;
    } else {
        if (h >= 20 || h < 6) theme = "dark";
        else theme = "light";
    }
%>
<div class="slider_area">
    <div class="single_slider d-flex align-items-center"
            <%if (theme.equals("dark")) {%>
         style="background-color: #001D38;">
        <canvas style="width: 100%; height: inherit; position: absolute; top: 0; left: 0;" id="universe"></canvas>
        <script src="${pageContext.request.contextPath}/sky/js/main.js"></script>
        <%} else {%>
        style="background-image: linear-gradient(45deg, #364afa 0%, #9138f6 100%);">
        <%}%>


        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12 col-md-12">
                    <div class="slider_text">
                        <div id="scryp-title-slider-block" style="display: none; max-width: 500px">
                            <h5 class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s">сайт</h5>
                            <h3 class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".3s">Scryp.ru</h3>
                            <p class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".4s">проекты и сервисы
                                Николая Скрипниченко</p>
                            <form action="${pageContext.request.contextPath}/mail-server/create-account" method="get" id="slider_code_form"
                                  class="newsletter_form wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".5s">
                                <input id="slider_code_input" type="text" required="required"
                                       pattern="[A-Za-z0-9]{6}" name="key"
                                       maxlength="6" placeholder="Ключ ScrypMail" style="padding-right: 120px; text-align: center"
                                       value="<%=request.getParameter("key") != null ? request.getParameter("key") : ""%>">
                                <button id="slider_code_button" type="submit">Вперёд <i class="fa fa-arrow-right"></i>
                                </button>
                            </form>
                        </div>
                        <div id="section-title-slider-block" style="display: none">
                            <h3 class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s"
                                id="section-title-slider-text"></h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>