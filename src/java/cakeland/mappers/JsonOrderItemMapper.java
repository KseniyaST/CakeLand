/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cakeland.mappers;

import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import cakeland.model.OrderItem;
import java.util.Arrays;
import org.codehaus.jackson.map.ObjectMapper;

/**
 * 
 *
 * @author Пользователь
 */
public class JsonOrderItemMapper {
    public static List<OrderItem> fromJSON(String json)  {
        try {
            ObjectMapper mapper = new ObjectMapper();
            OrderItem[] oi = mapper.readValue(json, OrderItem[].class);
            return Arrays.asList(oi);
        } catch (IOException ex) {
            Logger.getLogger(JsonOrderItemMapper.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
