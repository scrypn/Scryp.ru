<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="description" content="Данные о почтовом сервере ScrypMail">
    <jsp:include page="/includes/links.jsp" />
    <title>Scryp.ru — Данные о почтовом сервере ScrypMail</title>
</head>
<body>
<div class="full_code">
    <jsp:include page="/includes/header.jsp" />
    <jsp:include page="/includes/slider.jsp" />
    <script>
        $("#section-title-slider-text").text("Почтовый сервер")
        $("#section-title-slider-block").show()
    </script>

    <jsp:include page="sources/index-source.jsp" />

    <script>anim_func("#info-mail-server");</script>
</div>
<jsp:include page="/includes/footer.jsp" />
</body>
</html>
