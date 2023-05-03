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
<body>
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
            <li class="list"><a href="Welcomepage.jsp"> ${username1} </a>
             <ul id="smallmenu">
                <li class="toggle-list"><a href="home.jsp" target="_self">Thoát</a></li> </ul>
            </li>
          </ul>

        </nav>
            <input id="search-box" type="text" title="search" name="search" size="40" maxlength="50" placeholder="Search">
            <a href="ShoppingCart.jsp"><img id="package" src="images/Icon/giohang.jpg" width="40px" height="40px"></a>
      </div>
    </div>
  </div>
  <hr width="100%" color="#000000" class="space">
  <div class="images-shop" align="center" >
    <img src="./images/home/shopgiay.jpg"/>
  </div>
  <!-----------------------Rieview SP------------------------------->
  <div class="small-container">
    <h2 class="title">Adidas</h2>
    <div class="row">
        <div class="col-4">
            <a href="#"><img src="./images/home/yeezy-350-v2.jpg"></a>
            <a href="#"><h4>Yeezy 350 V2</h4></a>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p class="cost">2.760.000 ₫</p>
        </div>
        <div class="col-4">
          <a href="#"><img src="./images/home/ultraboost-4.0.jpg"></a>
          <a href="#"><h4>Ultraboost 4.0</h4></a>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p class="cost">4.100.000 ₫</p>
        </div>
        <div class="col-4">
          <a href="#"><img src="./images/home/AdidasNiteJogger.jpg"></a>
          <a href="#"><h4>Adidas Nite Jogger</h4></a>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p class="cost">2.990.000 ₫</p>
        </div>
    </div> 
    <h2 class="title">Nike</h2>
    <div class="row">
        <div class="col-4">
          <a href="#"><img src="images/home/airjordan1.png"></a>
          <a href="#"><h4>Air Jordan 1</h4></a>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
            </div>
            <p class="cost">3.450.000 ₫</p>
        </div>
        <div class="col-4">
          <a href="#"><img src="images/home/NikeAirForce1.jpg"></a>
          <a href="#"><h4>Nike Air Force 1</h4></a>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p class="cost">2.530.000 ₫</p>
        </div>
        <div class="col-4">
          <a href="#"><img src="images/home/NikeAirMax270.jpg"></a>
          <a href="#"><h4>Nike Air Max 270</h4></a>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
            </div>
            <p class="cost">3.450.000 ₫</p>
        </div>
    </div>
    <h2 class="title">Vans</h2>
    <div class="row">
        <div class="col-4">
          <a href="#"><img src="images/home/VansSk8-HiLite.jpg"></a>
          <a href="#"><h4>Vans Sk8-Hi Lite</h4></a>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p class="cost">1.495.000 ₫</p>
        </div>
        <div class="col-4">
          <a href="#"><img src="images/home/VansLowLandCc.jpg"></a>
          <a href="#"><h4>Vans Low Land Cc</h4></a>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p class="cost">1.955.000 ₫</p>
        </div>
        <div class="col-4">
          <a href="#"><img src="images/home/VansUltraRangeEXO.jpg"></a>
          <a href="#"><h4>Vans UltraRange EXO</h4></a>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
            </div>
            <p class="cost">3.450.000 ₫</p>
        </div>
    </div>
    <h2 class="title">Converse</h2>
    <div class="row">
        <div class="col-4">
          <a href="#"><img src="images/home/Converse1970s.jpg"></a>
          <a href="#"><h4>Converse 1970s</h4></a>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p class="cost">1.955.000 ₫</p>
        </div>
        <div class="col-4">
          <a href="#"><img src="images/home/ConverseChuckTaylorAllStar.jpg"></a>
          <a href="#"><h4>Converse Chuck Taylor All Star</h4></a>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p class="cost">1.300.000 ₫</p>
        </div>
        <div class="col-4">
          <a href="#"><img src="images/home/ConverseNetStarClassic.jpg"></a>
          <a href="#"><h4>Converse Net Star Classic</h4></a>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
            </div>
            <p class="cost">1.400.000 ₫</p>
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

</body>
</html>
