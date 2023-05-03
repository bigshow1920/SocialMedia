<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    <title> ADIDAS </title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./CSS file/adidas.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
  <!-- Header -->
  <div class="header">
    <div class="">
      <div id="menu">
        <div class="logo">
          <a href="home1.jsp"><img id="logo" src="images/home/logo3.png" width="350px" ></a>
        </div>
        <nav>
          <ul id="MenuItems">
            <li class="list"><a href="gioithieu1.jsp" target="_self">Giới thiệu</a></li>
            <li class="list"><a href="">Sản Phẩm</a>
              <ul id="smallmenu">
                <li class="toggle-list"><a href="Adidas1.jsp" target="_self">Adidas</a></li>
                <li class="toggle-list"><a href="Vans1.jsp">Vans</a></li>
                <li class="toggle-list"><a href="Converse1.jsp">Converse</a></li>
              </ul>
            </li>
            <li class="list"><a href="">Liên Hệ</a></li>
            <li class="list"><a href="Welcomepage.jsp">${username1}</a>
             <ul id="smallmenu">
                <li class="toggle-list"><a href="home.jsp" target="_self">Thoát</a></li> </ul>
                </li>
          </ul>
        </nav>
          <div class="cart">
            <input id="search-box" type="text" title="search" name="search" size="40" maxlength="50" placeholder="Search">
            <a href="ShoppingCart.jsp"><img id="package" src="images/Icon/giohang.jpg" width="40px" height="40px"><span> 0 </span></a>
          </div>
          <hr width="100%" color="#000000" class="space">
          <style>
           h1 {
  text-align: center;
}</style>
  <h1>Số dư hiện tại không đủ</h1> 
      </div>
    </div>
  </div>