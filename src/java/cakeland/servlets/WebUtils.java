/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cakeland.servlets;

import cakeland.model.User;
import cakeland.storage.UserStorage;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Ксения
 */
public class WebUtils {

    static public boolean checkUser(HttpServletRequest request) {
        for (Cookie cookie : request.getCookies()) {
            if (cookie.getName().equals("cakeses")) {
                return UserStorage.getInstance().checkSession(cookie.getValue());
            }
        }
        return false;
    }

    static public String auth(String login, String password) {
        return UserStorage.getInstance().authUser(login, password);
    }

    static public boolean checkAdmin(HttpServletRequest request) {
        for (Cookie cookie : request.getCookies()) {
            if (cookie.getName().equals("cakeses")) {
                User user = UserStorage.getInstance().getUserBySessn(cookie.getValue());
                return user != null && user.isAdmin();
            }
        }
        return false;
    }
    
     static public User getUser(HttpServletRequest request) {
        for (Cookie cookie : request.getCookies()) {
            if (cookie.getName().equals("cakeses")) {
                return UserStorage.getInstance().getUserBySessn(cookie.getValue());
            }
        }
        return null;
    }

}
