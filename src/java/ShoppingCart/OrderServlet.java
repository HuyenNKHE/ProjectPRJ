/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package ShoppingCart;

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
import model.Cart;
import model.Email;
import model.EmailUtils;
import model.Product;
import model.SoLuongDaBan;
import model.TongChiTieuBanHang;

/**
 *
 * @author DELL
 */
public class OrderServlet extends HttpServlet {
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        if (a == null) {
            response.sendRedirect("login");
            return;
        }
        int accountID = a.getId();
        DAO dao = new DAO();
        List<Cart> list = dao.getCartByAccountID(accountID);
        List<Product> list2 = dao.getAllProduct();
        double totalMoney = 0;
        for (Cart c : list) {
            for (Product p : list2) {
                if (c.getProductID() == p.getId()) {
                    totalMoney = totalMoney + (p.getPrice() * c.getAmount());
                }
            }
        }
        double totalMoneyVAT = totalMoney + totalMoney * 0.1;

        double tongTienBanHangThem = 0;
        int sell_ID;
        for (Cart c : list) {
            for (Product p : list2) {
                if (c.getProductID() == p.getId()) {
                    tongTienBanHangThem = 0;
                    sell_ID = dao.getSellIDByProductID(p.getId());
                    tongTienBanHangThem = tongTienBanHangThem + (p.getPrice() * c.getAmount());
                    TongChiTieuBanHang t2 = dao.checkTongChiTieuBanHangExist(sell_ID);
                    if (t2 == null) {
                        dao.insertTongChiTieuBanHang(sell_ID, 0, tongTienBanHangThem);
                    } else {
                        dao.editTongBanHang(sell_ID, tongTienBanHangThem);
                    }
                }
            }
        }

        for (Cart c : list) {
            for (Product p : list2) {
                if (c.getProductID() == p.getId()) {
                    SoLuongDaBan s = dao.checkSoLuongDaBanExist(p.getId());
                    if (s == null) {
                        dao.insertSoLuongDaBan(p.getId(), c.getAmount());
                    } else {
                        dao.editSoLuongDaBan(p.getId(), c.getAmount());
                    }
                }
            }
        }

        dao.insertInvoice(accountID, totalMoneyVAT);
        TongChiTieuBanHang t = dao.checkTongChiTieuBanHangExist(accountID);
        if (t == null) {
            dao.insertTongChiTieuBanHang(accountID, totalMoneyVAT, 0);
        } else {
            dao.editTongChiTieu(accountID, totalMoneyVAT);
        }

        request.getRequestDispatcher("DatHang.jsp").forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        try {
            String emailAddress = request.getParameter("email");
            String name = request.getParameter("name");
            String phoneNumber = request.getParameter("phoneNumber");
            String deliveryAddress = request.getParameter("deliveryAddress");

            HttpSession session = request.getSession();
            Account a = (Account) session.getAttribute("acc");
            if (a == null) {
                response.sendRedirect("login");
                return;
            }
            int accountID = a.getId();
            DAO dao = new DAO();
            List<Cart> list = dao.getCartByAccountID(accountID);
            List<Product> list2 = dao.getAllProduct();

            double totalMoney = 0;
            for (Cart c : list) {
                for (Product p : list2) {
                    if (c.getProductID() == p.getId()) {
                        totalMoney = totalMoney + (p.getPrice() * c.getAmount());
                    }
                }
            }
            double totalMoneyVAT = totalMoney + totalMoney * 0.1;

            Email email = new Email();
            email.setFrom("alfredojcpmyles37@gmail.com");
            email.setFromPassword("yslhhspuwklhzknw");
            email.setTo(emailAddress);
            email.setSubject("Dat hang thanh cong tu Aringo Barkery");
            StringBuilder sb = new StringBuilder();
            sb.append("Xin chào ").append(name).append("<br>");
            sb.append("Bạn vừa đặt hàng từ Aringo Barkery. <br> ");
            sb.append("Địa chỉ nhận hàng của bạn là: <b>").append(deliveryAddress).append(" </b> <br>");
            sb.append("Số điện thoại khi nhận hàng của bạn là: <b>").append(phoneNumber).append(" </b> <br>");
            sb.append("Các sản phẩm bạn đặt là: <br>");
            for (Cart c : list) {
                for (Product p : list2) {
                    if (c.getProductID() == p.getId()) {
                        sb.append(p.getName()).append(" | ").append("Price:").append(p.getPrice()).append("VND").append(" | ").append("Amount:").append(c.getAmount()).append(" | ").append("<br>");
                    }
                }
            }
            sb.append("Tổng tiền: ").append(String.format("%.02f", totalMoneyVAT)).append("$").append("<br>");
            sb.append("Cảm ơn bạn đã đặt hàng từ Aringo Barkery<br>");
            sb.append("Chủ cửa hàng");

            email.setContent(sb.toString());
            EmailUtils.send(email);
            request.setAttribute("mess", "Dat hang thanh cong!");

            dao.deleteCartByAccountID(accountID);

				request.setAttribute("email", emailAddress);
				request.getRequestDispatcher("success_order.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("error", "Dat hang that bai!");
            e.printStackTrace();
        }

        request.getRequestDispatcher("DatHang.jsp").forward(request, response);
    }

}
