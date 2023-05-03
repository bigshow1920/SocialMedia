<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    <title> Giỏ hàng </title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./CSS file/adidas.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
</head>

    <body>
        <center>
           <body>
            
      <div class="header">
          <div id=" menu ">
            <div class="logo">
              <a href="home.jsp"><img id="logo" src="images/Vans/logo3.png" width="200px" ></a>
            </div>
            <nav>
              <ul id="MenuItems">
                <li class="list"><a href="gioithieu1.jsp" target="_blank">Giới thiệu</a></li>
                <li class="list"><a href="">Sản Phẩm</a>
                  <ul id="smallmenu">
                    <li class="toggle-list"><a href="Adidas1.jsp">Adidas</a></li>
                    <li class="toggle-list"><a href="Vans1.jsp">Vans</a></li>
                    <li class="toggle-list"><a href="Converse1.jsp">Converse</a></li>
                  </ul>
                </li>
                <li class="list"><a href="">Liên Hệ</a></li>
                <li class="list"><a href="Welcomepage.jsp">${username1}</a>
                 <ul id="smallmenu">
                <li class="toggle-list"><a href="home.jsp" target="_self">Thoát</a></li> </ul></li>
    
            </nav>

               
                <a href="ShoppingCart.jsp"><img id="package" src="images/Icon/giohang.jpg" ></a><span> </span></a>
          </div>
        </div>
            <br>Cart List</br> 
            <table width="75%" border="1">
                <tr bgcolor="#CCCCCC">
                    <td>Description</td>
                    <td>Quantity</td>
                    <td>Unit Price </td>
                    <td>Total</td>
                </tr>
                <jsp:useBean id="cart" scope="session" class="beans.CartBean" />

                <c:if test="${cart.lineItemCount == 0}">
                    <tr> <td colspan="4">- Cart is currently empty -</td></tr>
                </c:if>

                <c:forEach var="cartItem" items="${cart.list}" varStatus="counter">
                    <form name="item" method="POST" action="CartController">
                        <tr>
                            <td><c:out value="${cartItem.description}"/></td>
                            <td>
                                <input type='hidden' name='stt' value='<c:out value="${counter.count}"/>'>
                                <input type='number' name="quantity" value='<c:out value="${cartItem.quantity}"/>'> 
                                <input type="submit" name="action" value="Update">
                                <input type="submit" name="action" value="Delete">
                            </td>
                            <td>$<c:out value="${cartItem.price}"/></td>
                            <td>$<c:out value="${cartItem.totalCost}"/></td>
                        </tr>
                    </form>
                </c:forEach>
                <!--Total-->
                <form  action="BuyServlet" method="POST">
                <tr>
                    <td colspan="3"> </td>
                    <td>Subtotal: $<c:out value="${cart.total}"/></td>
                </tr>
            </table>
            
            <h2>Số dư hiện tại ${money} </h2>
             <div class="payment">
            
              <input type="hidden" name="money" value="${money}">
              <input type="hidden" name="txtusername" value="${username1}">
              <input type="hidden" name="total" value=" ${cart.total}">
    <a href="#">
      <button id="paymentBtn"  type="submit"  class="btn" value="payment"> Thanh toán </button>
      </form>
    </a> 
  </div>
        </center>
        
    </body>
</html>