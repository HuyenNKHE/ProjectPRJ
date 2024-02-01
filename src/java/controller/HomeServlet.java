/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author DELL
 */
@WebServlet(name="HomeServlet", urlPatterns={"/home"})
public class HomeServlet extends HttpServlet {
   
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            //b1: get data from dao
            DAO dao = new DAO();
            List<Product> list = dao.getAllProduct();
            List<Category> listC = dao.getAllCategory();
            List<Product> listL = dao.getLast();
            
            // lay ra toan bo san pham
            int numPs = list.size();
            int numperPage = 9;
            int numpage = numPs / numperPage + (numPs % numperPage == 0 ? 0 : 1);
            int start, end;
            String tpage = request.getParameter("page");
            int page;
            try {
                page = Integer.parseInt(tpage);
            } catch (NumberFormatException e) {
                page = 1;
            }
            start = (page - 1) * numperPage;
            if (page * numperPage > numPs) {
                end = numPs;
            } else {
                end = page * numperPage;
            }
            List<Product> arr = dao.getListByPage(list, start, end);
//so phan tu cua 1 trang
            request.setAttribute("data", arr);
//so trang
            request.setAttribute("num", numpage);
           

            //b2: set data to jsp
            request.setAttribute("listP", list);
            request.setAttribute("listCC", listC);
            request.setAttribute("last", listL);
            request.getRequestDispatcher("home_page.jsp").forward(request, response);
            //404 -> url
            //500 -> jsp properties
        }
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
