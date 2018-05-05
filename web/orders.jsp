

<%@page import="cakeland.model.OrderItem"%>
<%@page import="cakeland.model.Order"%>
<%@page import="cakeland.model.Cake"%>
<%@page import="java.util.List"%>
<%@page import="cakeland.controllers.CakeController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="jsp-parts/header.jsp" %>
<%
    
%>

<div class="container">
    <div class="row content-wrapper">
        <legend class="legend-row">Ваши заказы</legend>
        <div class="orders-wrapper">
            <%for (Order order : user.getOrders()) {%>
            <div class='order-info row custyle'>
                <p>Заказ #<%=order.getId()%></p>
                <table class='table table-striped'>
                    <thead>
                        <tr>

                            <th>Торт</th>
                            <th>Количесвто</th>
                            <th>Стоимость</th>
                        </tr> 
                    </thead>
                    <tbody>
                        <%
                            int total = 0;
                            for (OrderItem orderitem : order.getOrderItems()) {
                                total += orderitem.getCountc() * orderitem.cake.getPrice();
                        %>
                        <tr>
                            <td><%=orderitem.cake.getName()%></td>
                            <td><%=orderitem.getCountc()%></td>
                            <td><%=(orderitem.getCountc() * orderitem.cake.getPrice())%></td>                                    
                        </tr> 
                        <%}%>
                    </tbody>                    
                </table>
                <div>
                    <span>Всего к оплате: <%=total%></span>
                    <button onclick="deleteOrder(<%=order.getId()%>)" type="button">Отменить заказ</button>
                </div>
            </div>
            <%}%>
        </div> 
    </div>
</div>
<%@include file="jsp-parts/footer.jsp" %>