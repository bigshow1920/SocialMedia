package control;

import java.io.IOException;
import java.io.PrintWriter;

import java.sql.DriverManager;

import entity.User;
import entity.Users;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")

public class LoginServlet extends HttpServlet {

    /**
     * Default constructor. 
     */
  

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
		String userName = request.getParameter("txtUsername");
		String passWord = request.getParameter("txtPassword");

		
		if (userName != null && passWord != null) {
		Users user = new Users(userName, passWord);
		if(user.isValid()){
	
		request.setAttribute("username", userName);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("Welcomepage.jsp");
		response.sendRedirect("Welcomepage.jsp");
		//requestDispatcher.forward(request, response);
		}else{
		response.sendRedirect("ErrorPage.jsp");
		}
		}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try (PrintWriter out = response.getWriter()) {
			String userName = request.getParameter("txtUsername");
			String passWord = request.getParameter("txtPassword");

			
			if (userName != null && passWord != null) {
			Users user = new Users(userName, passWord);
			if(user.isValid()){
		
			//request.setAttribute("username", userName);
			 HttpSession session = request.getSession();
		     session.setAttribute("username1", userName);
		     session.setAttribute("password1", passWord);
             int money=user.getmoney();
             session.setAttribute("money", money);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("Welcomepage.jsp");
			response.sendRedirect("Welcomepage.jsp");
			//requestDispatcher.forward(request, response);
			}else{
			response.sendRedirect("ErrorPage.jsp");
			}
			}
			}
	}
	public static void main(String arg[])
	{
		
	}

}

