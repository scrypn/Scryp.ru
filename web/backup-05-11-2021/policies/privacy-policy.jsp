<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="description" content="Политика конфиденциальности и обработки персональных данных Scryp.ru">
    <jsp:include page="/includes/links.jsp"/>
    <title>Scryp.ru — Политика конфиденциальности и обработки персональных данных</title>
</head>
<body>
<div class="full_code">
    <jsp:include page="/includes/header.jsp"/>
    <jsp:include page="/includes/slider.jsp"/>
    <jsp:include page="/policies/sources/privacy-policy.jsp"/>
    <script>
        $("#pers_data").show()

        $("#section-title-slider-text").text("Политика Конфиденциальности")
        $("#section-title-slider-block").show()
    </script>
</div>
<jsp:include page="/includes/footer.jsp"/>
</body>
</html>