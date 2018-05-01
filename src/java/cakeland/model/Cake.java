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
public class Cake {
    
    private String name;    
    private String sostav;
    private int id;
    private int price;

    public Cake(int id, String name, int price, String sostav) {
        this.name = name;
        this.sostav = sostav;
        this.id = id;
        this.price = price;
    }
    
    

    /**
     * Get the value of price
     *
     * @return the value of price
     */
    public int getPrice() {
        return price;
    }

    /**
     * Set the value of price
     *
     * @param price new value of price
     */
    public void setPrice(int price) {
        this.price = price;
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
     * Get the value of sostav
     *
     * @return the value of sostav
     */
    public String getSostav() {
        return sostav;
    }

    /**
     * Set the value of sostav
     *
     * @param sostav new value of sostav
     */
    public void setSostav(String sostav) {
        this.sostav = sostav;
    }


    /**
     * Get the value of name
     *
     * @return the value of name
     */
    public String getName() {
        return name;
    }

    /**
     * Set the value of name
     *
     * @param name new value of name
     */
    public void setName(String name) {
        this.name = name;
    }

    
    
}
