<%@page import="cakeland.model.User"%>
<%@page import="cakeland.servlets.WebUtils"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%User user = WebUtils.getUser(request);%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cakeland</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="lib/css/bootstrap.min.css" rel="stylesheet">
        <link href="lib/css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="lib/css/bootstrap-theme.css" type="text/css"/>
        <link rel="stylesheet" href="lib/css/main.css" type="text/css"/>
        <script src="lib/js/jquery.min.js"></script>
        <script src="lib/js/bootstrap.min.js"></script>
        <script src="lib/js/main.js"></script>
    </head>
    <body class="cake-body">
        <div class="container">
            <div class="row header-wrapper">
                <div class="row-fluid">
                    <div class="span9">
                        <h1 class="main">CakeLAND</h1>
                    </div>
                    
                    <div class="span3 cabinet">
                        <%if (user == null) {%>
                        <button class="btn-info pull-right" type="button" onclick="loginClick()">Войти</button>                                    
                        <%} else {%>
                        <h5 class="span6">Привет, <%=user.getLogin()%>!!!</h5>
                        <button class="btn-info pull-right" type="button" onclick="logoutClick()">Выйти</button>
                        <%}%>
                    </div>
                </div>
                <div class="navbar ">
                    <div class="navbar-inner">
                        <ul class="nav">
                            <li>
                                <a href="/CourseProject/home">Главная</a>
                            </li>
                            <li>
                                <a href="/CourseProject/orders">Мои заказы</a>
                            </li>
                            <li>
                                <a href="/CourseProject/make_cakes">Заказать ТОРТИКИ</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
