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
        <div class="cart">
          <input id="search-box" type="text" title="search" name="search" size="40" maxlength="50" placeholder="Search">
          <a href="cart.jsp"><img id="package" src="images/Icon/giohang.jpg" width="40px" height="40px"><span> 0 </span></a>
        </div>
      </div>
    </div>
  </div>

  <hr width="100%" color="#000000" class="space">

  <!-- Thông tin giỏ hàng -->
  
  <div class="products-container">
    <div class="product-header">
      <h4 class="productInCart-title"> SẢN PHẨM </h4>
      <h4 class="productInCart-price"> GIÁ TIỀN </h4>
      <h4 class="productInCart-quantity"> SỐ LƯỢNG </h4>
      <h4 class="productInCart-total"> TỔNG CỘNG </h4>
    </div>

  <!-- Hiển thị thông tin sản phẩm trong giỏ hàng, phần này sẽ được thêm trong file javascript -->
    <div class="products">

    </div>
  </div>

  <div class="payment">
    <a href="#">
      <button id="paymentBtn" value="payment"> Thanh toán </button>
    </a> 
  </div>

  <div class="popup">
    <div class="popup-content">
      <img src="images/Icon/close.png" width="35px" height="35px" class="close" alt="close">
      <img src="images/home/logo3.png" width="350px" style="display:block; margin: 0 auto 20px;">
      <div id="orderForm">
        <form action="cart.jsp" name="ordFrm">
          <!-- Nhập tên người nhận hàng -->
          <div id="orderName">
            <label for="orderName"> Tên người nhận hàng </label>
            <input type="text" name="orderName" id="orderName" placeholder="Name" required/>
          </div>

          <!-- Nhập địa chỉ giao hàng -->
          <div id="orderAddress">
            <label for="orderAddress"> Địa chỉ giao hàng </label>
            <input type="text" name="orderAddress" id="orderAddress" placeholder="Address" required/>
          </div>

          <!-- Nhập email nhận thông tin đơn hàng -->
          <div id="orderEmail">
            <label for="orderEmail"> Email </label>
            <input type="email" name="orderEmail" id="orderEmail" placeholder="Email" required/>
          </div>

          <!-- Nhập SDT liên lạc -->
          <div id="orderPhoneNumber">
            <label for="orderPhoneNumber"> SDT người nhận hàng </label>
            <input type="text" name="orderPhoneNumber" id="orderPhoneNumber" placeholder="Phone" required/>
          </div>

          <!-- Nút xác nhận thanh toán -->
          <p id="confirmBtn">
            <input type="button" name="confirmBtn" value="Xác nhận" />
          </p>

          <!-- Khung kết quả xác nhận -->
          <div id="confirmAlert">
            <input type="text" name="confirmAlert" id="confirmAlert" readonly />
          </div>

          <div id="nameResult">
            <input type="text" name="nameResult" id="nameResult" readonly/>
          </div>

          <div id="addrResult">
            <input type="text" name="addrResult" id="addrResult" readonly/>
          </div>

          <div id="phoneResult">
            <input type="text" name="phoneResult" id="phoneResult" readonly/>
          </div>

          <div id="green-tick" >
            <img id="confirm" src="images/Icon/black-check.png" width="70px" height="70px"/>
          </div>

      </form>
      </div>
    </div>
  </div>
  <div>
    <a href="#" title="Về Đầu Trang"><img src="./images/Icon/backtotop.png" width="50px" class="back-to-top"/></a>
  </div>

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

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script>
      var MenuItems = document.getElementById("MenuItems");
    
      MenuItems.style.maxHeight = "0px";
    
      function menutoggle(){
        if(MenuItems.style.maxHeight == "0px") {
            MenuItems.style.maxHeight = "200px";
        }
        else {
            MenuItems.style.maxHeight = "0px";
        }
      }
        
  </script>

  <script src="./Script/adidas.js"></script>
  <script src="./Script/cart.js"></script>
  <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>

  </body>
</html>