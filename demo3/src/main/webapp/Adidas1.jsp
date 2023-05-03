<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <a href="ShoppingCart.jsp"><img id="package" src="images/Icon/giohang.jpg" ></a><span> </span></a>
          </div>
            
      </div>
    </div>
  </div>

  <hr width="100%" color="#000000" class="space">

      <!-- Filter Tool -->
      <div id="filter-tool">
        <h3 id="filter-title"> FILTER </h3>
        
        <!-- Filter theo thương hiệu -->
        <h3 id="filter-element"> Thương hiệu </h3>
        <form action="Adidas.jsp">
          <label for="brands"> Chọn thương hiệu: </label>
          <select name="brands" id="brands">
            <option value> Bất kỳ </option>
            <option value="Adidas" href="Adidas.jsp"> Adidas </option>
            <option value="Nike" href="Nike.jsp"> Nike </option>
            <option value="Vans" href="Vans.jsp"> Vans </option>
            <option value="Converse" href="Converse.jsp"> Converse </option>
          </select>
        </form>
        
        <!-- Filter theo giá tiền -->
        <h3 id="filter-element"> Giá </h3>
        <div class="padding-filter">
           <button class="btn" value="all" onclick="changeProductList('all')"> Show all</button>
            <button class="btn" value="1stRange" onclick="changeProductList('1stRange')"> 100.000đ - 200.000đ</button>
            <button class="btn" value="2ndRange" onclick="changeProductList('2ndRange')"> 200.000đ - 500.000đ</button>
            <button class="btn" value="3rdRange" onclick="changeProductList('3rdRange')"> 500.000đ - 1.000.000đ</button>
            <button class="btn" value="4thRange" onclick="changeProductList('4thRange')"> > 1000.000đ</button>
        </div>
        
       
        <h3 id="filter-element"> Size </h3>
        <div class="padding-filter">
          <table>
            <input type="checkbox" value="36" name="size"> 36 <br>
            <input type="checkbox" value="37" name="size"> 37 <br>
            <input type="checkbox" value="38" name="size"> 38 <br>
            <input type="checkbox" value="39" name="size"> 39 <br>
            <input type="checkbox" value="40" name="size"> 40 <br>
            <input type="checkbox" value="41" name="size"> 41 <br>
            <input type="checkbox" value="42" name="size"> 42 <br>
            <input type="checkbox" value="43" name="size"> 43 <br>
            <input type="checkbox" value="44" name="size"> 44 <br>
          </table>
        </div> 
      </div>
      
      <h2> ADIDAS </h2>

      
      <c:forEach items="${listP}" var="o">
            <form method="POST" action="CartController">
              <ul type="none">
              
                 <div id="adidas-product-card">
                    <div>
                      <a id="asset-link" href="" target="_blank">
                        <img id="product-img" src="${o.image}">
                      </a>
                    </div>
                    <div>
                      <a id="asset-link" href="Superstar.jsp" target="_blank">
                        <div id="product-detail-top"> ${o.id} </div>
                        <div id="product-detail-main">
                          <span id="product-name"> ${o.name}  </span>
                          <div id="product-price" value=${o.price}> ${o.price} </div><div id="product-price-cross"> ${o.price*2}</div>
                          <input type="hidden" name="description" value=" ${o.name}">
                          <input type="hidden" name="quantity" value="1">
                          <input type="hidden" name="price" value="${o.price}"> 
                          <input type="hidden" name="jsp" value="Adidas1.jsp">
                          <input type="submit" name="action" value="Add To Cart">
                         
                  
                        </div>
                      </a>
                    </div>
                  </div>
               
                  </ul>
          
               
              </form>
            </c:forEach> 
      <div>
        <a href="#" title="Về Đầu Trang"><img src="./images/Icon/backtotop.png" width="50px" class="back-to-top"/></a>
      </div>
        

        <!-- Nút chuyển trang -->
        

        
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
        <script src="./Script/adidas.js"></script>
    </body>
</html>