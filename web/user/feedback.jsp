<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="description" content="Если у вас возникли какие-то проблемы при использовании Scryp-сервисов
        или хотите сообщить об ошибке, напишите нам здесь, либо на почту support@scryp.ru">
    <jsp:include page="/includes/links.jsp" />
    <title>Scryp.ru — Обратная связь</title>
</head>
<body>
<div class="full_code">
    <jsp:include page="/includes/header.jsp" />
    <jsp:include page="/includes/slider.jsp" />
    <script>
        $("#section-title-slider-text").text("Обратная связь")
        $("#section-title-slider-block").show()
    </script>

    <jsp:include page="sources/feedback-source.jsp" />

    <script>anim_func("#feedback_div");</script>
</div>
<jsp:include page="/includes/footer.jsp" />
</body>
</html>
