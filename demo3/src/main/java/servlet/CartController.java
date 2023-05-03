package servlet;

import beans.CartBean;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Lonely
 */
public class CartController extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String iAction = request.getParameter("action");
        String jsp = request.getParameter("jsp");
        if (iAction != null && !iAction.equals("")) {
            if (iAction.equals("Add To Cart")) {
                addToCart(request);
                request.getRequestDispatcher(jsp).forward(request, response);
            } else if (iAction.equals("Update")) {
                updateCart(request);
            } else if (iAction.equals("Delete")) {
                deleteCart(request);
            }
        }
        if (!iAction.equals("Add To Cart")) response.sendRedirect("ShoppingCart.jsp");
    }

    protected void deleteCart(HttpServletRequest request) {
        HttpSession session = request.getSession();
        
        String iSTT = request.getParameter("stt");
        CartBean cartBean = null;

        Object iObject = session.getAttribute("cart");
        if (iObject != null) {
            cartBean = (CartBean) iObject;
        } else {
            cartBean = new CartBean();
        }
        cartBean.deleteCart(iSTT);
    }

    protected void updateCart(HttpServletRequest request) {
        HttpSession session = request.getSession();
        
        String iQuantity = request.getParameter("quantity");
        String iSTT = request.getParameter("stt");

        CartBean cartBean = null;

        Object objCartBean = session.getAttribute("cart");
        if (objCartBean != null) {
            cartBean = (CartBean) objCartBean;
        } else {
            cartBean = new CartBean();
        }
        cartBean.updateCart(iSTT, iQuantity);
    }

    protected void addToCart(HttpServletRequest request) {
        HttpSession session = request.getSession();
        
        String iDescription = request.getParameter("description");
        String iPrice = request.getParameter("price");
        String iQuantity = request.getParameter("quantity");

        CartBean cartBean = null;

        Object objCartBean = session.getAttribute("cart");

        if (objCartBean != null) {
            cartBean = (CartBean) objCartBean;
        } else {
            cartBean = new CartBean();
            session.setAttribute("cart", cartBean);
        }

        cartBean.addCart(iDescription, iPrice, iQuantity);
    }

}