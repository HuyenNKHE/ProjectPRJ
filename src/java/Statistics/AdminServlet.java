/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Statistics;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Account;
import model.Invoice;
import model.Product;

/**
 *
 * @author DELL
 */
public class AdminServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        int uID;
        DAO dao = new DAO();
        if (a == null) {
            response.sendRedirect("login");
            return;
        }
        uID = a.getId();
        int checkIsAdmin = dao.checkAccountAdmin(uID);
        if (checkIsAdmin == 0) {
            response.sendRedirect("login");
            return;
        }

        double totalMoney1 = dao.totalMoneyDay(1);
        double totalMoney2 = dao.totalMoneyDay(2);
        double totalMoney3 = dao.totalMoneyDay(3);
        double totalMoney4 = dao.totalMoneyDay(4);
        double totalMoney5 = dao.totalMoneyDay(5);
        double totalMoney6 = dao.totalMoneyDay(6);
        double totalMoney7 = dao.totalMoneyDay(7);


        int allProduct = dao.countAllProduct();
        double sumAllInvoice = dao.sumAllInvoice();
        Product pmax=dao.ProductMaxPrice();
        Product pmin = dao.ProductMinPrice();


        List<Invoice> listAllInvoice = dao.getAllInvoice();
        List<Account> listAllAccount = dao.getAllAccount();

        request.setAttribute("listAllInvoice", listAllInvoice);
        request.setAttribute("listAllAccount", listAllAccount);
        request.setAttribute("sumAllInvoice", sumAllInvoice);

        request.setAttribute("allProduct", allProduct);

        request.setAttribute("totalMoney1", totalMoney1);
        request.setAttribute("totalMoney2", totalMoney2);
        request.setAttribute("totalMoney3", totalMoney3);
        request.setAttribute("totalMoney4", totalMoney4);
        request.setAttribute("totalMoney5", totalMoney5);
        request.setAttribute("totalMoney6", totalMoney6);
        request.setAttribute("totalMoney7", totalMoney7);
        
        
        request.setAttribute("pmax", pmax);
        request.setAttribute("pmin", pmin);
        

        request.getRequestDispatcher("admin.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
