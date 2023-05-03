package control;

import java.io.IOException;
import context.updatemoney;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BuyServlet
 */
@WebServlet("/BuyServlet")
public class BuyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyServlet() {
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
		String userName = request.getParameter("txtusername");
		String total=request.getParameter("total");
		String money=request.getParameter("money");
		double str1 = Double.parseDouble(total); 
		int IntValue = (int) str1;
		HttpSession session = request.getSession();
		int m=Integer.parseInt(money);
        if(m>IntValue)
        {
        	updatemoney u= new updatemoney(userName,m-IntValue);
        	
      	    session.setAttribute("money", m-IntValue);
        	boolean b=u.isValid();
        	response.sendRedirect("Buy.jsp");
        }
        else response.sendRedirect("BuyError.jsp");
		
	}

}
