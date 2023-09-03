<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Николай Скрипниченко">
    <meta name="apple-mobile-web-app-title" content="Scryp" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="apple-touch-icon" sizes="57x57" href="${pageContext.request.contextPath}/img/favicon.png">
    <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/img/favicon.png">
    <link rel="apple-touch-icon" sizes="120x120" href="${pageContext.request.contextPath}/img/favicon.png">
    <link rel="apple-touch-icon" sizes="152x152" href="${pageContext.request.contextPath}/img/favicon.png">
    <link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}/img/favicon.png">
    <link rel="shortcut icon" type="image/svg+xml" href="${pageContext.request.contextPath}/vectors/favicon.svg">
    <link rel="icon" sizes="192x192" href="${pageContext.request.contextPath}/img/favicon.png">
    <link rel="icon" sizes="128x128" href="${pageContext.request.contextPath}/img/favicon.png">

    <link rel="stylesheet" href="./css/main.css">
    <title>Scryp.ru - Ночное небо</title>
</head>
<body>
<div class="container">
    <div class="content">
        <canvas id="universe"></canvas>
        <a href="${pageContext.request.contextPath}/">
            <img src="${pageContext.request.contextPath}/vectors/scryp_logo.svg"
                 id="logo-footer" width="420" height="128" alt="" style="position: absolute; top: 35%; left: calc(50% - 210px)">
        </a>

    </div>
</div>
<script src="./js/main.js"></script>
</body>
</html>
