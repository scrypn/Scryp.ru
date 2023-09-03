<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="description" content="Создайте свой собственный почтовый ящик на домене ScrypMail.ru">
    <jsp:include page="/includes/links.jsp" />
    <title>Scryp.ru — Создание почтового ящика</title>
</head>
<body>
<div class="full_code">
    <jsp:include page="/includes/header.jsp" />
    <jsp:include page="/includes/slider.jsp" />
    <script>
        $("#section-title-slider-text").text("Новый ящик")
        $("#section-title-slider-block").show()
    </script>

    <jsp:include page="sources/create-account-source.jsp" />

    <script>anim_func("#create-email");</script>
</div>
<jsp:include page="/includes/footer.jsp" />
</body>
</html>
