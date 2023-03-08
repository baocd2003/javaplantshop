/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AccountDAO;
import dto.Account;

/**
 *
 * @author Admin
 */
public class test {
    public static void main(String[] args) throws Exception{
     Account acc = AccountDAO.getAccount("test@gmail.com","test");
            if( acc!=null){
                if(acc.getRole() == 1){
                    System.out.println("i am admin");
                }else{
                    System.out.print("i am user");
                }
            }else{
                System.out.print("login fail");
            }
//System.out.println("ndskn");
    } 
            
}
