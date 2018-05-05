

<%@page import="cakeland.model.OrderItem"%>
<%@page import="cakeland.model.Order"%>
<%@page import="cakeland.model.Cake"%>
<%@page import="java.util.List"%>
<%@page import="cakeland.controllers.CakeController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="jsp-parts/header.jsp" %>
<%
    CakeController cakeController = new CakeController();
%>
<script src="main.js"></script>
<div class="container">
    <div class="row content-wrapper">
        <legend class="legend-row">Оформите заказ</legend>
        <div class="make-order-wrapper">
            <span>Выберите торт: </span>
            <select id="all_cakes">
                <% for (Cake cake : cakeController.getAllCakes()) {%>
                <option value="<%=cake.getId()%>"><%=cake.getName()%></option>
                <%}%>
            </select>
            <button onclick="addCakeToOrder()">Добавить</button>
            <div id="order_target">

            </div>
            <button class="btn" type="button" onclick="makeOrder()">Сделать заказ</button>
        </div>
    </div>
    <%@include file="jsp-parts/footer.jsp" %>