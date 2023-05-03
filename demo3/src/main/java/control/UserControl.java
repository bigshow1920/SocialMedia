package control;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.CartBean;
import context.MSSQLConnection;
import entity.ListUser;
import entity.Userss;

/**
 * Servlet implementation class UserControl
 */
@WebServlet("/UserControl")
public class UserControl extends HttpServlet {
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	// TODO Auto-generated method stub
       
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.setContentType("text/html;charset=UTF-8");
	        ListUser dao = new ListUser();
	        List<Userss> list = dao.getAllProduct();
	        HttpSession session = request.getSession();
		    session.setAttribute("ListUser", list);
		    RequestDispatcher requestDispatcher = request.getRequestDispatcher("CrudUser.jsp");
			response.sendRedirect("CrudUser.jsp");
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	 protected void updateUser(HttpServletRequest request) {
	        
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
	        
	            	String sql1 = "UPDATE Users Set email=?, password=?, moneyy=? where username=?; ";
	                
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
	        
	        
	 private void addUser(HttpServletRequest request) {
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
	         
	         String sql1 = "INSERT INTO Users(username,email,password,moneyy) "
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
	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String iAction = request.getParameter("action");
        System.out.println(iAction);
        if (iAction != null && !iAction.equals("")) {
            if (iAction.equals("Save")) {
            	updateUser(request);
            } else if (iAction.equals("Add")) {
            	addUser(request);
            } else if (iAction.equals("Delete")) {
            	DeleteUser(request);
            }
            else if (iAction.equals("DeleteAll")) {
            	deleteAllUser(request);}
        }
        
        doGet(request, response);
    }
	 private void deleteAllUser(HttpServletRequest request) {
			// TODO Auto-generated method stub
			String username = request.getParameter("Username");
			 Connection conn = null;
		        String DB_NAME = "webbangiay";
		        String DB_PORT = "1433";
		        String DB_USERNAME = "sa";
		        String DB_PASSWORD = "123456";
		        String sql = "Delete from Users; ";
		        MSSQLConnection db = new MSSQLConnection(DB_NAME, DB_PORT, DB_USERNAME, DB_PASSWORD);
		        conn = db.getConnection();
		        try {
		            PreparedStatement ps = conn.prepareStatement(sql);
		           
		            
		            ps.executeUpdate();
		           
		            
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
			
		}
	private void DeleteUser(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String username = request.getParameter("Username");
		System.out.print(username);
		 Connection conn = null;
	        String DB_NAME = "webbangiay";
	        String DB_PORT = "1433";
	        String DB_USERNAME = "sa";
	        String DB_PASSWORD = "123456";
	        String sql = "Delete from Users where username=?; ";
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

}
