<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="description" content="Программируйте онлайн на языке C++ вместе с ScrypC++">
    <jsp:include page="/includes/links.jsp" />
    <title>Scryp.ru — C++ компилятор</title>
</head>
<body>
<div class="full_code">
    <jsp:include page="/includes/header.jsp" />
    <jsp:include page="/includes/slider.jsp" />
    <script>
        $("#section-title-slider-text").text("ScrypC++")
        $("#section-title-slider-block").show()
    </script>
    <jsp:include page="sources/index-source.jsp" />
</div>
<jsp:include page="/includes/footer.jsp" />
</body>
</html>