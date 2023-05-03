package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Users;

/**
 * Servlet implementation class RegServlet
 */
@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userName = request.getParameter("txtUsername");
		String passWord = request.getParameter("txtPassword");
		String email = request.getParameter("txtemail");
		if (userName != null && passWord != null && email!=null) {
			Users user = new Users(userName, passWord,email);
			if(!user.isValid1()){
		
			//request.setAttribute("username", userName);
			 HttpSession session = request.getSession();
		     session.setAttribute("username1", userName);
		       

			RequestDispatcher requestDispatcher = request.getRequestDispatcher("RegSc.jsp");
			response.sendRedirect("RegSc.jsp");
			//requestDispatcher.forward(request, response);
			}else{
			response.sendRedirect("RegF.jsp");
			}
			}
		
	}

}
