/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cakeland.storage;

import cakeland.controllers.UserController;
import cakeland.model.User;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class UserStorage {

    private static UserStorage instance;
    private List<User> userlist;
    private Map<String, User> storage;
    private UserController userController;

    private UserStorage() {
        init();
    }

    static {
        instance = new UserStorage();
    }

    public static UserStorage getInstance() {
        return instance;
    }

    private void init() {
        userController = new UserController();
        userlist = userController.getAllUsers();
        storage = new HashMap<>();
    }

    public String authUser(String login, String password) {
        for (User user : userlist) {
            if (user.getLogin().equals(login)) {
                if (user.getPassword().equals(password)) {
                    storage.put(login, user);
                    return login;
                } else {
                    return null;
                }
            }
        }
        return null;
    }

    public boolean checkSession(String value) {
        return storage.containsKey(value);
    }

    public User getUserBySessn(String value) {
        if (storage.containsKey(value)) {
            return storage.get(value);
        }
        return null;
    }
}
