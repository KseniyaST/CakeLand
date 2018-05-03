/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cakeland.controllers;

import java.util.List;
import cakeland.DAL.CakeDAL;
import cakeland.DAL.UserDAL;
import cakeland.model.Order;
import cakeland.model.OrderItem;
import cakeland.model.User;


public class UserController {

    protected UserDAL userDal;
    protected CakeDAL cakeDal;

    public UserController() {
        userDal = new UserDAL();
        cakeDal = new CakeDAL();
    }

    public List<User> getAllUsers() {
        List<User> users = userDal.selectAll();
        for (User user : users) {
            for (Order order : user.getOrders()) {
                for (OrderItem orderItem : order.getOrderItems()) {
                    orderItem.cake = cakeDal.selectById(orderItem.getCakeid());
                }
            }
        }
        return users;
    }

    public User getUserById(int id) {
        return userDal.selectById(id);
    }

    public int insertUser(User user) {
        return userDal.insert(user);
    }

    public int updateUser(User user) {
        return userDal.update(user);
    }

    public User deleteUserById(int id) {
        return userDal.deleteById(id);
    }

    public List<User> getUserByLogin(String login) {
        return userDal.selectByUsername(login);
    }

}
