
<%@page import="cakeland.model.Cake"%>
<%@page import="java.util.List"%>
<%@page import="cakeland.controllers.CakeController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="jsp-parts/header.jsp" %>
<%
    CakeController cakeController = new CakeController();
    List<Cake> cakeList = cakeController.getAllCakes();
%>

<div class="container">
    <div class="row content-wrapper">                      
        <legend class="legend-row">Наши тортики</legend>
        <div class="all-cakes-wrapper">
            <div class='cake-table-wrapper row custyle'>
                <table class='table custab cake-table'>
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Название</th>
                            <th>Состав</th>
                            <th>Цена</th>
                            <th class='text-center' ></th>
                        </tr> 
                    </thead>
                    <tbody>
                        <% for (Cake cake : cakeList) {%>
                        <tr>
                            <td><%=cake.getId()%></td>
                            <td><%=cake.getName()%></td>
                            <td><%=cake.getSostav()%></td>
                            <td><%=cake.getPrice()%></td>
                            <td class='text-center'>
                                <%if (user != null && user.isAdmin()) {%> 

                                <%}%>
                            </td>
                        </tr> 
                        <%}%>
                    </tbody>
                </table>
            </div>
        </div> 
    </div>
</div>
<%@include file="jsp-parts/footer.jsp" %>