/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cakeland.model;

import java.util.List;

/**
 *
 * @author Ксения
 */
public class Order {

    private int userid;
    private int id;
    private List<OrderItem> orderitems;

    public Order(int id, int userid, List<OrderItem> orderitems) {
        this.userid = userid;
        this.id = id;
        this.orderitems = orderitems;
    }

    public Order(int id, int userid) {
        this.userid = userid;
        this.id = id;
    }

    /**
     * Get the value of cakes
     *
     * @return the value of cakes
     */
    public List<OrderItem> getOrderItems() {
        return orderitems;
    }

    /**
     * Set the value of cakes
     *
     * @param cakes new value of cakes
     */
    public void setOrderItems(List<OrderItem> orderitems) {
        this.orderitems = orderitems;
    }

    /**
     * Get the value of id
     *
     * @return the value of id
     */
    public int getId() {
        return id;
    }

    /**
     * Set the value of id
     *
     * @param id new value of id
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * Get the value of userid
     *
     * @return the value of userid
     */
    public int getUserid() {
        return userid;
    }

    /**
     * Set the value of userid
     *
     * @param userid new value of userid
     */
    public void setUserid(int userid) {
        this.userid = userid;
    }

}
