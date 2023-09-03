<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="description" content="Коротко о том, зачем вам нужна карта сайта и что это вообще такое">
    <jsp:include page="/includes/links.jsp" />
    <title>Scryp.ru — Что такое sitemap.xml</title>
</head>
<body>
<div class="full_code">
    <jsp:include page="/includes/header.jsp" />
    <jsp:include page="/includes/slider.jsp" />
    <script>
        $("#section-title-slider-text").text("Что такое sitemap.xml")
        $("#section-title-slider-block").show()
    </script>
    <jsp:include page="sources/about-source.jsp" />
</div>
<jsp:include page="/includes/footer.jsp" />
</body>
</html>