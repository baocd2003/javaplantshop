/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AccountDAO;
import dao.OrderDAO;
import dto.Account;
import dto.Order;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class test {
            
    public static void main(String[] args) throws Exception{
        ArrayList<Order> ord = OrderDAO.getOrders("test@gmail.com");
            ArrayList<Order> canceledList = new ArrayList<>();
            if (ord == null || ord.isEmpty()) {
                canceledList = null;
            } else {
                for (Order order : ord) {
                    if (order.getStatus() == 3) {
                        canceledList.add(order);
                    }
                }
            }
            for(Order o :canceledList){
                System.out.println(o.getOrderID());
            }
    
//System.out.println("ndskn");
    } 
            
}
