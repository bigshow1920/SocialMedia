<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Sneaker Shop</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sneaker Shop</title>
    <link rel="stylesheet" href="./CSS file/home.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
 <div class="header">
    <div class="">
      <div id="menu">
        <div class="logo">
          <a href="home.jsp"><img id="logo" src="images/home/logo3.png" width="350px" ></a>
        </div>
        <nav>
          <ul id="MenuItems">
            <li class="list"><a href="gioithieu.jsp" target="_self">Giới thiệu</a></li>
            <li class="list"><a href="">Sản Phẩm</a>
              <ul id="smallmenu">
                <li class="toggle-list"><a href="Adidas.jsp" target="_self">Adidas</a></li>
                <li class="toggle-list"><a href="Vans.jsp">Vans</a></li>
                <li class="toggle-list"><a href="Converse.jsp">Converse</a></li>
              </ul>
            </li>
            <li class="list"><a href="">Liên Hệ</a></li>
            <li class="list"><a href="account.jsp">Đăng Nhập / Đăng Ký</a></li>
          </ul>

        </nav>
            <input id="search-box" type="text" title="search" name="search" size="40" maxlength="50" placeholder="Search">
            <a href="cart.jsp"><img id="package" src="images/Icon/giohang.jpg" width="40px" height="40px"></a>
        </div>
    </div>
  </div>
  <hr width="100%" color="#000000" class="space">
  <style>
  h1 {
  text-align: center;
}</style>
  <h1>Đăng kí thành công</h1>
<div>
  <a href="#" title="Về Đầu Trang"><img src="./images/Icon/backtotop.png" width="50px" class="back-to-top"/></a>
</div>
<body>
<!---footer-->
    <div class="footer">
        <!-- Thông tin cửa hàng -->
        <div id="contact-Inf">
          <h1 class="address">Hệ Thống Cửa Hàng</h1>
          <img class="contact-icon" src="images/Icon/store.png"/> <p class="address-content">Sneaker Shop UIT</p>
          <img class="contact-icon" src="images/Icon/location.png"/> <p class="address-content2">Address: Trường Đại Học Công Nghệ Thông Tin</p>
          <img class="contact-icon" src="images/Icon/phone.png"/> <p class="address-content2">Hotline : (+84)123456789</p>
          <img class="contact-icon" src="images/Icon/mail.png"/> <p class="address-content2">E-mail: sneakershop@gmail.com</p>
          <img class="contact-icon" src="images/Icon/clock.png"/> <p class="address-content2">Monday-Sunday : 07:30-22:00</p>
        </div>
          
        <!-- Follow us -->
        <div id="follow">
          <h1 >Follow us</h1>
          <img class="contact-icon" src="images/Icon/facebook.png"/> <p> Facebook </p> 
          <img class="contact-icon" src="images/Icon/instagram.png"/> <p> Instagram </p> 
          <img class="contact-icon" src="images/Icon/youtube.png"/> <p> Youtube </p> 
        </div>

        <!-- Chứng nhận chất lượng -->
        <div id="certificate">
          <h1 class="slogan">Uy Tín - Chất Lượng -  Hàng Đầu Việt Nam</h1>
          <img src="images/home/shop_logo.png" id="certificate-img" >
        </div>
    </div>

</body>
</html>