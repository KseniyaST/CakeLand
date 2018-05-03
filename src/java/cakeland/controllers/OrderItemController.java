/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cakeland.controllers;

import java.util.List;
import cakeland.DAL.OrderItemDAL;
import cakeland.model.Order;
import cakeland.model.OrderItem;


public class OrderItemController {

    protected OrderItemDAL orderDal;

    public OrderItemController() {
        orderDal = new OrderItemDAL();
    }

    public List<OrderItem> getAllOrderItems() {
        return orderDal.selectAll();
    }

    public int insertOrderItem(OrderItem orderItem) {
        return orderDal.insert(orderItem);
    }

    public int deleteOrderItem(OrderItem orderItem) {
        return orderDal.delete(orderItem);
    }

    public Order deleteOrderItemById(int id) {
        return orderDal.deleteById(id);
    }

}
