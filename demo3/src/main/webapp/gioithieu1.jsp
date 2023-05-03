<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Sneaker Shop</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sneaker Shop</title>
    <link rel="stylesheet" href="./CSS file/gioithieu.css">
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
                <li class="toggle-list"><a href="home.jsp" target="_self">Thoát</a></li> </ul></li>
          </ul>

        </nav>
            <input id="search-box" type="text" title="search" name="search" size="40" maxlength="50" placeholder="Search">
            <a href="ShoppingCart.jsp"><img id="package" src="images/Icon/giohang.jpg" width="40px" height="40px"></a>
      </div>
    </div>
  </div>

  <hr width="100%" color="#000000" class="space">

  <!-- Introduction-->
      <div id="introduction">
        <h2> GIỚI THIỆU </h2>
        <p>Ra đời từ 2020 với tên gọi Authentic Gallery, tuy mang cùng mục đích với mong muốn mang đến cho người Việt Nam một không gian mua sắm khác biệt khi mang đến thương hiệu hot nhất Thế giới, nhưng những hoài nghi về tên gọi đã thôi thúc chúng tôi thay đổi mình để tạo ra sự khác biệt giữa vô vàn các cửa hàng trên toàn quốc.

        Sneaker Shop từ đó mà ra đời, với mong muốn mang lại một không gian hòa trộn giữa đam mê và việc mua sắm – tựa như chính logo là chiếc giày được bao quanh bởi ngọn lửa, một gian phòng trưng bày nơi chứa đựng những thiết kế và công nghệ hiện đại nhất Thế giới, nằm bên trong từng chiếc giày.
            
        Sneaker Shop tự hào sẽ mang đến một cơ hội trải nghiệm khác biệt khi các bạn đến tham quan, mua sắm trực tiếp tại Việt Nam với hàng loạt các thương hiệu khác nhau, từ những dòng sản phẩm "bình dân" đến những dòng "high-end" mà không phải mất quá nhiều thời gian trong việc di chuyển để mua sắm. Hàng loạt các nhãn hiệu tầm cỡ như Nike, Adidas, Converse,... đều được chúng tôi mang về và đã sẵn sàng để những tín đồ thời trang có thể trải nghiệm nhanh chóng.
            
        Sneaker Shop chúng tôi mang lại cho bạn trải nghiệm shopping hàng hiệu chưa bao giờ là nhanh chóng và thoải mãi đến vậy ở Việt Nam, bạn có thể ghé mua sản phẩm ngay ở khu vực Quận Bình Thạnh - Thành Phố Hồ Chí Minh, hay chỉ mở điện thoại và vào website của chúng tôi mua hàng và được chuyển tới tận nhận một cách nhanh chóng bạn chưa từng nghĩ mình sẽ mua được hàng hiệu tại Việt Nam dễ đến thế.
            
        Với danh mục sản phẩm đã được tuyển lựa kĩ càng và cập nhật hằng ngày, <b>TẤT CẢ NHỮNG GÌ BẠN CẦN</b> chỉ là: TRUY CẬP đường link <a href="home.jsp">sneakershop.com</a> – và sau đó chỉ cần lấy những sản phẩm và bỏ vào giỏ hàng của bạn. Hãy điểm qua thử 4 lợi ích không thể nào chối từ khi truy cập trang website của chúng tôi bạn nhé:</p>
        
        <ul>   
            <li>Giao diện thân thiện, dễ tìm kiếm sản phẩm theo ý thích.</li>
            <li>Mức giá sản phẩm rõ ràng, tư vấn mọi lúc mọi nơi qua thanh chat tiện lợi.</li>
            <li>Cung cấp phương thức thanh toán COD – dễ dàng kiểm tra sản phẩm.</li>
            <li>Nhận ngay mã kiểm tra bưu kiện đến từ DHL Việt Nam – dịch vụ chuyển phát uy tín có mặt trên 220 quốc gia và vũng lãnh thổ.</li>
        </ul>
        
        <p>Bốn lợi ích hàng đầu, đồng thời cũng nằm trong kim chỉ nam hướng Sneaker Shop đến việc chăm sóc và hỗ trợ khách hàng một cách tốt nhất có thể. Chặng đường còn dài, và đây mới chỉ là những bước đi đầu tiên, hướng Sneaker Shop trở thành một “gian phòng trưng bày” đích thực không chỉ để mua sắm, mà còn là nơi để bạn thưởng thức những nghệ thuật đương đại của Thế giới ngay tại đất nước chữ S này.</p>
         
      </div>
      <div>
        <a href="#" title="Về Đầu Trang"><img src="./images/Icon/backtotop.png" width="50px" class="back-to-top"/></a>
      </div>
  
  <!-- Footer -->
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