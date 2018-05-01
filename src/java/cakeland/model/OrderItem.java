/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cakeland.model;

/**
 *
 * @author Ксения
 */
public class OrderItem {

    private int id;

    private int cakeid;

    private int orderid;

    private int countc;
    
    public Cake cake;
    /**
     * Get the value of countc
     *
     * @return the value of countc
     */
    
    
    public OrderItem(int id, int cakeid, int orderid, int countc) {
        this.id = id;
        this.cakeid = cakeid;
        this.orderid = orderid;
        this.countc = countc;
    }

    public OrderItem(int cakeid, int countc) {
        this.cakeid = cakeid;
        this.countc = countc;
    }

    public OrderItem() {
    }

    
    public int getCountc() {
        return countc;
    }

    /**
     * Set the value of countc
     *
     * @param countc new value of countc
     */
    public void setCountc(int countc) {
        this.countc = countc;
    }

    /**
     * Get the value of orderid
     *
     * @return the value of orderid
     */
    public int getOrderid() {
        return orderid;
    }

    /**
     * Set the value of orderid
     *
     * @param orderid new value of orderid
     */
    public void setOrderid(int orderid) {
        this.orderid = orderid;
    }

    /**
     * Get the value of cakeid
     *
     * @return the value of cakeid
     */
    public int getCakeid() {
        return cakeid;
    }

    /**
     * Set the value of cakeid
     *
     * @param cakeid new value of cakeid
     */
    public void setCakeid(int cakeid) {
        this.cakeid = cakeid;
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

}
