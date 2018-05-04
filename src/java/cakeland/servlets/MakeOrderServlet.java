package cakeland.servlets;

import cakeland.controllers.CakeController;
import cakeland.controllers.OrderController;
import cakeland.controllers.OrderItemController;
import cakeland.mappers.JsonOrderItemMapper;
import cakeland.model.Cake;
import cakeland.model.Order;
import cakeland.model.OrderItem;
import cakeland.model.User;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "MakeOrder", urlPatterns = {"/addOrder"})
public class MakeOrderServlet extends HttpServlet {

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
            StringBuilder sb = new StringBuilder();
            String s;
            while ((s = request.getReader().readLine()) != null) {
                sb.append(s);
            }
            String json = sb.toString();
            List<OrderItem> orderItems = JsonOrderItemMapper.fromJSON(json);
            OrderController orderController = new OrderController();
            OrderItemController orderItemController = new OrderItemController();
            Order order = new Order(0, user.getId());
            orderController.insertOrder(order);
            List<Cake> cakes = new CakeController().getAllCakes();
            order.setOrderItems(orderItems);
            for (OrderItem orderItem : orderItems) {
                orderItem.setOrderid(order.getId());
                for (Cake cake : cakes) {
                    if (cake.getId() == orderItem.getCakeid()) {
                        orderItem.cake = cake;
                    }
                }
                orderItemController.insertOrderItem(orderItem);
            }
            user.getOrders().add(order);
            response.setStatus(200);
        } else {
            response.sendRedirect("login.jsp");
        }
    }
}
