package cakeland.servlets;

import cakeland.controllers.OrderController;
import cakeland.controllers.OrderItemController;
import cakeland.model.Order;
import cakeland.model.OrderItem;
import cakeland.model.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DeleteOrder", urlPatterns = {"/deleteOrder"})
public class DeleteOrderServlet extends HttpServlet {

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean isAuth = WebUtils.checkUser(request);
        if (isAuth) {
            User user = WebUtils.getUser(request);
            int id = Integer.parseInt(request.getParameter("id"));
            Order order = getOrder(user, id);
            if (user.isAdmin() || order != null) {
                OrderController orderController = new OrderController();
                OrderItemController orderItemController=new OrderItemController();
                for(OrderItem oi:order.getOrderItems()){
                    orderItemController.deleteOrderItemById(oi.getId());
                }
                orderController.deleteOrder(order);
                user.getOrders().remove(order);
                response.setStatus(200);
            }
        } else {
            response.sendRedirect("login.jsp");
        }
    }

    private Order getOrder(User user, int id) {
        for (Order order : user.getOrders()) {
            if (order.getId() == id) {
                return order;
            }
        }
        return null;
    }

}
