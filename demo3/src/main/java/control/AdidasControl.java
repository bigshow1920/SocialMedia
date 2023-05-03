/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.DAOA;
import entity.Category;
import entity.ProductAdidas;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import context.MSSQLConnection;

/**
 *
 * @author trinh
 */
@WebServlet("/AdidasControl")
public class AdidasControl extends HttpServlet {

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
        
        DAOA dao = new DAOA();
        List<ProductAdidas> list = dao.getAllProduct();
        List<Category> listC = dao.getAllCategory();
        ProductAdidas last = dao.getLast();
        
        HttpSession session = request.getSession();
	    session.setAttribute("listP", list);
        //request.setAttribute("listP", list);
        //request.setAttribute("listCC", listC);
        request.getRequestDispatcher("Adidas1.jsp").forward(request, response);
        //404 -> url
        //500 -> jsp properties
    }
    protected void processRequest2(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        DAOA dao = new DAOA();
        List<ProductAdidas> list = dao.getAllProduct();
        List<Category> listC = dao.getAllCategory();
        ProductAdidas last = dao.getLast();
        
        HttpSession session = request.getSession();
	    session.setAttribute("listP", list);
        //request.setAttribute("listP", list);
        //request.setAttribute("listCC", listC);
	    RequestDispatcher requestDispatcher = request.getRequestDispatcher("CrudProduct.jsp");
		response.sendRedirect("CrudProduct.jsp");
        //404 -> url
        //500 -> jsp properties
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
    private void deleteProduct(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String username = request.getParameter("Username");
		System.out.println(username);
		 Connection conn = null;
	        String DB_NAME = "webbangiay";
	        String DB_PORT = "1433";
	        String DB_USERNAME = "sa";
	        String DB_PASSWORD = "123456";
	        String sql = "Delete from product_adidas where ID=? ";
	        MSSQLConnection db = new MSSQLConnection(DB_NAME, DB_PORT, DB_USERNAME, DB_PASSWORD);
	        conn = db.getConnection();
	        try {
	            PreparedStatement ps = conn.prepareStatement(sql);
	            ps.setString(1, username);
	            
	            ps.executeUpdate();
	           
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
		
	}
    private void deleteAllProduct(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String username = request.getParameter("Username");
		 Connection conn = null;
	        String DB_NAME = "webbangiay";
	        String DB_PORT = "1433";
	        String DB_USERNAME = "sa";
	        String DB_PASSWORD = "123456";
	        String sql = "Delete from product_adidas; ";
	        MSSQLConnection db = new MSSQLConnection(DB_NAME, DB_PORT, DB_USERNAME, DB_PASSWORD);
	        conn = db.getConnection();
	        try {
	            PreparedStatement ps = conn.prepareStatement(sql);
	           
	            
	            ps.executeUpdate();
	           
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
		
	}
    protected void updateProduct(HttpServletRequest request) {
        
        String username = request.getParameter("Username");
        String password = request.getParameter("Password");
        String email = request.getParameter("Email");
        String money = request.getParameter("Money");
        int moneyy=Integer.parseInt(money);
        Connection conn = null;
        String DB_NAME = "webbangiay";
        String DB_PORT = "1433";
        String DB_USERNAME = "sa";
        String DB_PASSWORD = "123456";

   
        MSSQLConnection db = new MSSQLConnection(DB_NAME, DB_PORT, DB_USERNAME, DB_PASSWORD);
        conn = db.getConnection();
        
            	String sql1 = "UPDATE product_adidas Set Ten=?, Img=?, Gia=? where ID=?; ";
                
                try {
                    PreparedStatement ps1 = conn.prepareStatement(sql1);
                    ps1.setInt(3, moneyy);
                    ps1.setString(1, email);
                    ps1.setString(2, password);
                    ps1.setString(4, username);
                   
                    ps1.executeUpdate();
                   
                    
                } catch (Exception e) {
                    e.printStackTrace();
                }
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
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String iAction = request.getParameter("action");
        System.out.println(iAction);
        if (iAction != null && !iAction.equals("")) {
            if (iAction.equals("Save")) {
            	updateProduct(request);
            } else if (iAction.equals("DeleteAll")) {
            	deleteAllProduct(request);
            } else if (iAction.equals("Delete")) {
            	deleteProduct(request);
            }else if (iAction.equals("Add")) {
            	addProduct(request);}
        }
        processRequest2(request, response);
    }

    private void addProduct(HttpServletRequest request) {
		// TODO Auto-generated method stub
    	 String username = request.getParameter("Username");
         String password = request.getParameter("Password");
         String email = request.getParameter("Email");
         String money = request.getParameter("Money");
         int moneyy=Integer.parseInt(money);
         Connection conn = null;
         String DB_NAME = "webbangiay";
         String DB_PORT = "1433";
         String DB_USERNAME = "sa";
         String DB_PASSWORD = "123456";
         
         MSSQLConnection db = new MSSQLConnection(DB_NAME, DB_PORT, DB_USERNAME, DB_PASSWORD);
         conn = db.getConnection();
         
         String sql1 = "INSERT INTO product_adidas(id,Ten,Img, Gia) "
        	        + "VALUES(?,?,?,?)";
                 
                 try {
                     PreparedStatement ps1 = conn.prepareStatement(sql1);
                     ps1.setInt(4, moneyy);
                     ps1.setString(2, email);
                     ps1.setString(3, password);
                     ps1.setString(1,username);
                    
                     ps1.executeUpdate();
                    
                     
                 } catch (Exception e) {
                     e.printStackTrace();
                 }
                
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
