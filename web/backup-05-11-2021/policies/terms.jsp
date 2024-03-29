<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="description"
          content="Правила пользования сайтом и пользовательское соглашение Scryp.ru">
    <jsp:include page="/includes/links.jsp"/>
    <title>Scryp.ru — Пользовательское соглашение</title>
</head>
<body>
<div class="full_code">
    <jsp:include page="/includes/header.jsp"/>
    <jsp:include page="/includes/slider.jsp"/>
    <jsp:include page="/policies/sources/terms.jsp"/>
    <script>
        $("#terms_data").show()

        $("#section-title-slider-text").text("Пользовательское соглашение")
        $("#section-title-slider-block").show()
    </script>
</div>
<jsp:include page="/includes/footer.jsp"/>
</body>
</html>