/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "mainController", urlPatterns = {"/mainController"})
public class mainController extends HttpServlet {
  private String url="";
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String action=request.getParameter("action");            
            if(action==null || action.equals("") || action.equals("Search")) url="index.jsp";
            else if(action.equals("login")) url="loginServlet";
            else if(action.equals("Register")) url="registerServlet";
            else if(action.equals("logout")) url="logoutServlet";
            else if(action.equals("updateProfile")) url="changeProfileServlet";
            else if(action.equals("cancel")) url="cancelOrderServlet";
            else if(action.equals("reorder")) url="reOrderServlet";
            else if(action.equals("getAllOrder")) url="getAllOrderServlet";
            else if(action.equals("getCompletedOrder")) url="getCompleteOrder";
            else if(action.equals("getCanceledOrder")) url="getCanceledOrder";
            else if(action.equals("getProcessingOrder")) url="getProcessingOrder";
            else if(action.equals("addtocart")) url="addToCartServlet";
            else if(action.equals("viewcart")) url="viewCartServlet";
            else if(action.equals("updateQuantity")) url="updateCartServlet";
            else if(action.equals("deleteItemCart")) url="deleteCartServlet";
            else if(action.equals("saveOrder")) url="saveOrderServlet";
            else if(action.equals("getPlant")) url="viewPlantServlet";
            else if(action.equals("manageAccounts")) url="manageAccountServlet";
            else if(action.equals("manageCategories")) url="manageCategoryServlet";
            else if(action.equals("changeStatusAccount")) url="changeStatusAccServlet";
            else if(action.equals("searchAccount")) url="searchAccountServlet";
            else if(action.equals("addNewCate")) url="addCategoryServlet";
            else if(action.equals("editCateName")) url="changeCateNameServlet";
            else if(action.equals("changeCatePage")) url="editCateName.jsp";
            else if(action.equals("searchCategory")) url="searchCategoryServlet";
            else if(action.equals("updatePlant")) url="updatePlantServlet";
            else if(action.equals("updatePlantPage")) url="updatePlantPage.jsp";
            else if(action.equals("addNewPlant")) url="addNewPlantServlet";
            else if(action.equals("updatePlantStatus")) url="updatePlantStatusServlet";
            else if(action.equals("searchPlant")) url="searchPlantServlet";
            else if(action.equals("managePlants")) url="managePlantServlet";
            else if(action.equals("manageOrders")) url="manageOrderServlet";
            else if(action.equals("searchByCustomerID")) url="searchOrderByIDServlet";
            else if(action.equals("completeOrder")) url="completeOrderServlet";
            else if(action.equals("searchOrderByDate")) url="searchOrderByDateServlet";

            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
        }       
    }    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
