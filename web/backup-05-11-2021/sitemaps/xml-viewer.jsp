<%@ page import="java.io.File" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String param = request.getParameter("file");
    if (param == null || param.equals("")) {
        response.sendRedirect("https://www.scryp.ru/page-not-found");
    } else {
        File f = new File("/opt/tomcat/webapps/scryp/sitemaps/files/" + param);
        if (f.isDirectory() || !f.exists()) {
            response.sendRedirect("https://www.scryp.ru/page-not-found");
        }
    }
%>
<html>
<head>
    <meta name="description" content="Просмотреть sitemap.xml файл, созданный нашим генератором карты сайта.">
    <jsp:include page="/includes/links.jsp"/>
    <title>Scryp.ru — Просмотр sitemap.xml</title>
</head>
<body>
<div class="full_code">
    <jsp:include page="/includes/header.jsp"/>
    <jsp:include page="/includes/slider.jsp"/>
    <script>
        $("#section-title-slider-text").text("Ваша карта сайта")
        $("#section-title-slider-block").show()
    </script>
    <div class="job_details_area" id="feedback_div">
        <div class="container">
            <div class="row">
                <div class="apply_job_form white-bg" style="margin-right: auto; margin-left: auto; max-width: 900px">
                    <h4 style="font-size: 38px; font-weight: 400; text-align: center" class="wow fadeInLeft"
                        data-wow-duration="1s" data-wow-delay=".1s">
                        <a class="index_title_links" href="${pageContext.request.contextPath}/sitemaps/">Карта сайта</a>
                    </h4>
                    <h5 style="color: #00D363; text-align: center" class="wow fadeInRight" data-wow-duration="1s"
                        data-wow-delay=".15s">На этой странице вы можете просмотреть созданный
                        вами sitemap.xml файл в удобном формате. Если содержимое файла не отображается, то скорее всего
                        вы используете недействительную ссылку на ресурс.
                        Попробуйте заново, либо сообщите об этом через <a
                                href="${pageContext.request.contextPath}/user/feedback">форму обратной связи</a>.</h5>
                    <div id="tree" style="display: none; margin-top: 50px; word-break: break-all" class="wow fadeInLeft" data-wow-duration="1s"
                         data-wow-delay=".2s"></div>
                </div>
            </div>
        </div>
    </div>
    <script>
        new DataTree({
            noURLTracking: true,
            attrs: 'ignore',
            fpath: 'files/<%= param%>',
            container: '#tree'
        });
        $("#tree").show()
    </script>
</div>
<jsp:include page="/includes/footer.jsp"/>
</body>
</html>