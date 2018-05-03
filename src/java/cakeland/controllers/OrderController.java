/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cakeland.controllers;

import java.util.List;
import cakeland.DAL.OrderDAL;
import cakeland.model.Order;


public class OrderController {

    protected OrderDAL orderDal;

    public OrderController() {
        orderDal = new OrderDAL();
    }

    public List<Order> getAllOrders() {
        return orderDal.selectAll();
    }

    public int insertOrder(Order order) {
        return orderDal.insert(order);
    }

    public int deleteOrder(Order order) {
        return orderDal.delete(order);
    }

    public Order deleteOrderById(int id) {
        return orderDal.deleteById(id);
    }

}
