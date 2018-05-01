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
public class User {

    private int id;
    private String login;

    private String password;

    private boolean admin;

    private List<Order> orders;

    public User(int id, String login, String password, boolean admin, List<Order> orders) {
        this.login = login;
        this.password = password;
        this.admin = admin;
        this.orders = orders;
        this.id = id;
    }

    public User(int id, String login, String password, boolean admin) {
        this.login = login;
        this.password = password;
        this.admin = admin;
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    /**
     * Get the value of orders
     *
     * @return the value of orders
     */
    public List<Order> getOrders() {
        return orders;
    }

    /**
     * Set the value of orders
     *
     * @param orders new value of orders
     */
    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }

    /**
     * Get the value of admin
     *
     * @return the value of admin
     */
    public boolean isAdmin() {
        return admin;
    }

    /**
     * Set the value of admin
     *
     * @param admin new value of admin
     */
    public void setAdmin(boolean admin) {
        this.admin = admin;
    }

    /**
     * Get the value of password
     *
     * @return the value of password
     */
    public String getPassword() {
        return password;
    }

    /**
     * Set the value of password
     *
     * @param password new value of password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * Get the value of name
     *
     * @return the value of name
     */
    public String getLogin() {
        return login;
    }

    /**
     * Set the value of name
     *
     * @param login new value of name
     */
    public void setLogin(String login) {
        this.login = login;
    }

}
