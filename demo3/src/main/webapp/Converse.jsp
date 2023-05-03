<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    <title> Converse </title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./CSS file/converse.css">
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
          <a href="home.jsp"><img id="logo" src="images/home/logo3.png" width="350px" ></a>
        </div>
        <nav>
          <ul id="MenuItems">
            <li class="list"><a href="gioithieu.jsp" target="_self">Giới thiệu</a></li>
            <li class="list"><a href="">Sản Phẩm</a>
              <ul id="smallmenu">
                <li class="toggle-list"><a href="Adidas1.jsp" target="_self">Adidas</a></li>
                <li class="toggle-list"><a href="Vans1.jsp">Vans</a></li>
                <li class="toggle-list"><a href="Converse1.jsp">Converse</a></li>
              </ul>
            </li>
            <li class="list"><a href="lienhe.jsp">Liên Hệ</a></li>
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
            <button class="btn" value="1stRange" onclick="changeProductList('1stRange')"> 1.000.000đ - 2.000.000đ</button>
            <button class="btn" value="2ndRange" onclick="changeProductList('2ndRange')"> 2.000.000đ - 5.000.000đ</button>
            <button class="btn" value="3rdRange" onclick="changeProductList('3rdRange')"> 5.000.000đ - 10.000.000đ</button>
            <button class="btn" value="4thRange" onclick="changeProductList('4thRange')"> > 10.000.000đ</button>
        </div>
        
        <!-- Filter theo size 
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
        </div> -->
      </div>
      
      <h2> Converse </h2>

      
      <!-- Danh sách sản phẩm từ 1,000,000đ - 2,000,000đ -->
      <div id="1stRange">
          <ul type="none">
              <!-- Sản phẩm 1 -->
              <li>
                <div id="converse-product-card">
                    <div>
                      <a id="asset-link" href="Chuck70.jsp" target="_blank">
                        <img id="product-img" src="images/Converse/Chuck70Black.png">
                      </a>
                    </div>
                    <div>
                      <a id="asset-link" href="Chuck70.jsp" target="_blank">
                        <div id="product-detail-top"> Chuck 70S </div>
                        <div id="product-detail-main">
                          <span id="product-name"> Chuck 70 Black </span>
                          <div id="product-price" value=2000000> 2 000 000đ </div>
                        </div>
                      </a>
                    </div>
                  </div>
              </li>

              <!-- Sản phẩm 7 -->
              <li>
                <div id="converse-product-card">
                    <div>
                      <a id="asset-link" href="Chuck70TLAT.jsp" target="_blank">
                        <img id="product-img" src="images/Converse/ChuckTaylorAllStar1970sWhite-Hi.png">
                      </a>
                    </div>
                    <div>
                      <a id="asset-link" href="Chuck70TLAT.jsp" target="_blank">
                        <div id="product-detail-top"> Classic Chuck </div>
                        <div id="product-detail-main">
                          <span id="product-name"> Chuck Taylor All Star </span>
                          <div id="product-price" value=2000000> 2 000 000đ </div>
                        </div>
                      </a>
                    </div>
                  </div>
              </li>

              <!-- Sản phẩm 8 -->
              <li>
                <div id="converse-product-card">
                    <div>
                      <a id="asset-link" href="Chuck70FlameLow.jsp" target="_blank">
                        <img id="product-img" src="images/Converse/Chuck70FlameLow.jpg">
                      </a>
                    </div>
                    <div>
                      <a id="asset-link" href="Chuck70FlameLow.jsp" target="_blank">
                        <div id="product-detail-top"> Chuck 70S </div>
                        <div id="product-detail-main">
                          <span id="product-name"> Chuck 70 FlameLow </span>
                          <div id="product-price" value=1900000> 1 900 000đ </div>
                        </div>
                      </a>
                    </div>
                  </div>
              </li>
          </ul>
      </div>

      <!-- Danh sách sản phẩm từ 2,000,000đ - 5,000,000đ -->
      <div id="2ndRange">
        <ul type="none">
            <!-- Sản phẩm 4 -->
            <li>
                <div id="converse-product-card">
                    <div>
                      <a id="asset-link" href="ChuckTLATCXIB.jsp" target="_blank">
                        <img id="product-img" src="images/Converse/ChuckTaylorAllStarCXIB.jpg">
                      </a>
                    </div>
                    <div>
                      <a id="asset-link" href="ChuckTLATCXIB.jsp" target="_blank">
                        <div id="product-detail-top"> Classic Chuck </div>
                        <div id="product-detail-main">
                          <span id="product-name"> Chuck Taylor All Star CX Ice Blue </span>
                          <div id="product-price" value=2300000> 2 300 000đ </div>
                        </div>
                      </a>
                    </div>
              </div>
            </li>

            <!-- Sản phẩm 5 -->
            <li>
                <div id="converse-product-card">
                    <div>
                      <a id="asset-link" href="ChuckTaylorAllStarLogoPlay.jsp" target="_blank">
                        <img id="product-img" src="images/Converse/ChuckTaylorAllStarLogoPlay.jpg">
                      </a>
                    </div>
                    <div>
                      <a id="asset-link" href="ChuckTaylorAllStarLogoPlay.jsp" target="_blank">
                        <div id="product-detail-top"> Classic Chuck </div>
                        <div id="product-detail-main">
                          <span id="product-name"> Chuck Taylor AllStar LogoPlay </span>
                          <div id="product-price" value=2000000> 2 000 000đ </div>
                        </div>
                      </a>
                    </div>
                  </div>
              </li>

              <!-- Sản phẩm 6 -->
            <li>
              <div id="converse-product-card">
                  <div>
                    <a id="asset-link" href="AllStarDisruptCX.jsp" target="_blank">
                      <img id="product-img" src="images/Converse/AllStarDisruptCX.jpg">
                    </a>
                  </div>
                  <div>
                    <a id="asset-link" href="AllStarDisruptCX.jsp" target="_blank">
                      <div id="product-detail-top"> Classic Chuck </div>
                      <div id="product-detail-main">
                        <span id="product-name"> All Star Disrupt CX </span>
                        <div id="product-price" value=3000000> 3 000 000đ </div>
                      </div>
                    </a>
                  </div>
                </div>
            </li>
          </ul>
      </div>

      <!-- Danh sách sản phẩm từ 5,000,000đ - 10,000,000đ -->
      <div id="3rdRange">
          <ul type="none">
              <!-- Sản phẩm 2 -->
              <li>
                <div id="converse-product-card">
                    <div>
                      <a id="asset-link" href="FearOfGodEssentials.jsp" target="_blank">
                        <img id="product-img" src="images/Converse/FearOfGodEssentials.jpg">
                      </a>
                    </div>
                    <div>
                      <a id="asset-link" href="FearOfGodEssentials.jsp" target="_blank">
                        <div id="product-detail-top"> FOG Collection </div>
                        <div id="product-detail-main">
                          <span id="product-name"> Fear Of God Essentials </span>
                          <div id="product-price" value=5700000> 5 700 000đ </div>
                        </div>
                      </a>
                    </div>
                  </div>
              </li>

              <!-- Sản phẩm 3 -->
              <li>
                <div id="converse-product-card">
                    <div>
                      <a id="asset-link" href="Chuck70HighxPLAY.jsp" target="_blank">
                        <img id="product-img" src="images/Converse/Chuck70HighxPLAY.jpeg">
                      </a>
                    </div>
                    <div>
                      <a id="asset-link" href="Chuck70HighxPLAY.jsp" target="_blank">
                        <div id="product-detail-top"> Chuck 70S </div>
                        <div id="product-detail-main">
                          <span id="product-name"> Chuck 70 High xPLAY </span>
                          <div id="product-price" value=5800000> 5 800 000đ </div>
                        </div>
                      </a>
                    </div>
                  </div>
              </li>

          </ul>
      </div>
      <div>
        <a href="#" title="Về Đầu Trang"><img src="./images/Icon/backtotop.png" width="50px" class="back-to-top"/></a>
      </div>
        

        <!-- Nút chuyển trang -->
        <div id="pagination"> 
          <button class="page-number" value="1"><a href="Converse.jsp"> 1 </a></button>
          <button class="page-number" value="2"><a href="Converse_page2.jsp"> 2 </a></button>
          <button class="page-number" value="3" disabled><a href=""> 3 </a></button>
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
                if(MenuItems.style.maxHeight == "0px")
                {
                    MenuItems.style.maxHeight = "200px";
                }
            else
                {
                    MenuItems.style.maxHeight = "0px";
                }
            }
            
            
             
        
        </script>
        <script src="./Script/converse.js"></script>
    </body>
</html>