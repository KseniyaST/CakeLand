/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cakeland.controllers;

import cakeland.DAL.CakeDAL;
import java.util.List;
import cakeland.model.Cake;


public class CakeController 
{
    protected CakeDAL cakeDal;
    public CakeController() 
    {
        cakeDal = new CakeDAL();
    }
    
    public List<Cake> getAllCakes()
    {
        return cakeDal.selectAll();
    }
    
    public Cake getCakeById(int id)
    {
        return cakeDal.selectById(id);
    }
     
    public int insertCake(Cake cake)
    {
        return cakeDal.insert(cake);
    }
      
    public int updateCake(Cake cake)
    {
        return cakeDal.update(cake);
    }
    
    public Cake deleteCakeById(int id)
    {
        return cakeDal.deleteById(id);
    }

}