/* My Javasript Code */

/* Thêm vào giỏ hàng:
 Event: bấm vào nút "Thêm vào giỏ hàng"
 Output: - Hiện số lượng sản phẩm đã thêm vào giỏ 
         - Hiện thông tin sản phẩm trong giỏ */

 let products = [
    {
        name: 'SUPERSTAR ',
        tag: 'superstar',
        price: 1680000,
        inCart: 0
    },
]

// Tạo mousse event cho nút "Thêm vào giỏ hàng"
let carts = document.querySelectorAll("#addBtn");

for (let i = 0; i< carts.length; i++) {
    carts[i].addEventListener("click", () => {
        // Testing line: kiểm tra xem file cart.js có được truy cập hay không
        //console.log("Added to cart");

        // Gọi hàm hiển thị số lượng sản phẩm
        countItem(products[i]);
        
        // Gọi hàm tính tổng tiền
        totalCost(products[i]);
    })
}

// Hiển thị số lượng sản phẩm trong giỏ hàng sau khi thêm
function countItem(product) {
    // Testing line: Kiểm tra xem sản phẩm được thêm vào giỏ hàng có đúng hay không
    console.log("The product clicked is", product);

    let productNumbers = localStorage.getItem("countItem");

    productNumbers = parseInt(productNumbers);

    // Kiểm tra xem sản phẩm đã được thêm vào giỏ hàng hay chưa
    // Nếu thêm rồi thì tăng số lượng lên
    if ( productNumbers ) {
        localStorage.setItem("countItem", productNumbers + 1);
        document.querySelector(".cart span").textContent = productNumbers + 1;
    } 
    // Nếu chưa thêm thì gán số lượng là 1
    else {
        localStorage.setItem("countItem", 1);
        document.querySelector(".cart span").textContent = 1;
    }

    setItems(product);
}

// Hiển thị số lượng sản phẩm trong giỏ hàng sau khi giảm
function reverseCountItem(product) {
    // Testing line: Kiểm tra xem hàm reverseCountItem có được gọi hay không
    console.log("reverseCountItem is called");

    let productNumbers = localStorage.getItem("countItem");

    productNumbers = parseInt(productNumbers);

    // Kiểm tra xem đã có sản phẩm nào trong giỏ hàng chưa
    // Nếu có và số lượng lớn hơn 1 thì giảm xuống
    if ( productNumbers > 1) {
        localStorage.setItem("countItem", productNumbers - 1);
        document.querySelector(".cart span").textContent = productNumbers - 1;
    }
    // Nếu còn 1 sản phẩm thì gán số lượng là 0
    else {
        localStorage.setItem("countItem", 0);
        document.querySelector(".cart span").textContent = 0;
    }

    reverseSetItems(product);
}

// Hàm cài đặt thông tin sản phẩm vào localStorage
function setItems(product) {
    // Kiểm tra xem hàm setItems có được gọi hay không
    //console.log("setItems function is called!");
    //console.log("My product is", product);

    let cartItems = localStorage.getItem("productsItems");
    cartItems = JSON.parse(cartItems);

    if (cartItems != null) {
        if (cartItems[product.tag] == undefined) {
            cartItems = {
                ...cartItems,
                [product.tag]: product
            }
        }
        cartItems[product.tag].inCart += 1;
    }
    else {
         // Gán số lượng sản phẩm trong giỏ là 1 sau khi "Thêm vào giỏ hàng"
        product.inCart = 1;

        cartItems = {
            [product.tag] : product
        }
    }

    // Hiển thị thông tin sản phẩm trong localStorage 
    localStorage.setItem("productsItems", JSON.stringify(cartItems));
}

function reverseSetItems(product) {
    // Kiểm tra xem hàm setItems có được gọi hay không
    console.log("reverseSetItems function is called!");
    console.log("My product is", product);

    let cartItems = localStorage.getItem("productsItems");
    cartItems = JSON.parse(cartItems);

    if (cartItems != null && cartItems[product.tag].inCart >= 1) {
        
        cartItems[product.tag].inCart -= 1;
    }
    else {
        product.inCart = 0;
    }

     // Hiển thị thông tin sản phẩm trong localStorage 
     localStorage.setItem("productsItems", JSON.stringify(cartItems));
}

// Hàm tính tổng tiền sau khi thêm sản phẩm
function totalCost(product) {
    // Testing line: Kiểm tra xem hàm totalCost có được gọi hay không
    //console.log("The product's price is", product.price);

    let cartCost = localStorage.getItem("totalCost");

    // Kiểm tra xem giỏ hàng đã có sản phẩm nào chưa
    // Nếu có rồi thì cộng giá tiền sản phẩm vào tổng tiền
    if (cartCost != null) {
        cartCost = parseInt(cartCost);
        localStorage.setItem("totalCost", cartCost + product.price);
    }
    // Nếu chưa có thì tổng tiền chính là giá tiền sản phẩm
    else {
        localStorage.setItem("totalCost", product.price);
    }
}

// Hàm tính tổng tiền sau khi giảm sản phẩm
function reverseTotalCost(product) {
    // Testing line: Kiểm tra xem hàm reverseTotalCost có được gọi hay không
    console.log("The product's price is", product.price);

    let cartCost = localStorage.getItem("totalCost");
    cartCost = parseInt(cartCost);

    // Kiểm tra xem giỏ hàng đã có sản phẩm nào chưa
    // Nếu có rồi và số lượng lớn hơn 1 thì trừ giá tiền sản phẩm vào tổng tiền
    if (cartCost != null && cartCost > product.price) {
        localStorage.setItem("totalCost", cartCost - product.price);
    }
    // Nếu số lượng sản phẩm là 1 thì gán tổng tiền là 0
    else {
        localStorage.setItem("totalCost", 0);
    }
}

// Hàm hiển thị sản phẩm trong giỏ hàng
function displayCart(product) {
    let cartItems = localStorage.getItem("productsItems");
    cartItems = JSON.parse(cartItems);

    let productsContainer = document.querySelector(".products");

    let cartCost = localStorage.getItem("totalCost");

    // Testing line: Kiểm tra xem localStorage của trang "Giỏ hàng" đã có những gì
    console.log(cartItems);

    if ( cartItems && productsContainer ) {
        // Testing line: Kiểm tra xem hàm displayCart có được gọi không, và chỉ được gọi khi trang "Giỏ hàng" đang hoạt động
        //console.log("displayCart function is running!");

        productsContainer.innerHTML = " ";
        Object.values(cartItems).map(item => {
            // Các câu lệnh bên dưới dùng để thêm các thẻ HTML và cài đặt CSS vào trang "Giỏ hàng"
            // <div class="inCart-product">: thêm hình ảnh và tên sản phẩm
            // <div class="price">: Thêm giá tiền sản phẩm (đơn giá)
            // <div class="quantity">: Thêm số lượng sản phẩm
            // <div class="total">: Thêm tổng tiền của sản phẩm đó (đơn giá * số lượng)
            // <div class="totalCartContainer">: Thêm tổng tiền giỏ hàng 

            productsContainer.innerHTML += `

            <div class="inCart-product">
                <img src="./images/${item.tag}.jpg" width="100px" height="100px" style="margin-top: 5px; margin-right: 5px; margin-bottom: 5px; float:left"/>
                <span style="float: left">${item.name}</span>
            </div>

            <div class="price"> ${item.price} đ </div>

            <div class="quantity"> 
                <ion-icon class="decrease" name="arrow-dropdown-circle" onclick="decreaseItem()"></ion-icon>
                <span> ${item.inCart} </span> 
                <ion-icon class="increase" name="arrow-dropup-circle" onclick="increaseItem()"></ion-icon>
            </div>

            <div class="total">
                ${item.inCart * item.price} đ
            </div>
             
            <div class="totalCartContainer" >
                <span class="totalCartTitle"> Tổng tiền giỏ hàng </span>
                <span> ${item.inCart * item.price} đ </span>
            </div>
            `;
        });

    }
}

// Hàm thêm số lượng sản phẩm trong giỏ hàng
function increaseItem() {
    let increaseInCart = document.querySelectorAll(".increase");
    for (let i = 0; i < increaseInCart.length; i++) {

            // Testing line: Kiểm tra xem hàm increaseItem có được gọi hay không
            console.log("Added one more");
    
            // Gọi hàm hiển thị số lượng sản phẩm
            countItem(products[i]);

            // Gọi hàm hiển thị sản phẩm trong giỏ hàng
            displayCart(products[i]);
            
            // Gọi hàm tính tổng tiền
            totalCost(products[i]);
        }
}

// Hàm giảm số lượng sản phẩm trong giỏ hàng
function decreaseItem() {
    let decreaseInCart = document.querySelectorAll(".decrease");
    for (let i = 0; i< decreaseInCart.length; i++) {

        // Testing line: Kiểm tra xem hàm decreaseItem có được gọi hay không
        console.log("Subtracted one out");

        // Gọi hàm hiển thị số lượng sản phẩm
        reverseCountItem(products[i]);

        // Gọi hàm hiển thị sản phẩm trong giỏ hàng
        displayCart(products[i]);

        // Gọi hàm tính tổng tiền
        reverseTotalCost(products[i]);
    }
}


// Hàm lưu số lượng sản phẩm trong giỏ hàng
function onloadItem() {
    let productNumbers = localStorage.getItem("countItem");

    // Kiểm tra xem giỏ hàng có sản phẩm nào chưa
    // Nếu có rồi thì giữ nguyên số lượng mỗi khi load lại trang
    if ( productNumbers ) {
        document.querySelector(".cart span").textContent = productNumbers;
    } 
}

// Gọi hàm lưu số lượng sản phẩm
onloadItem();

// Hiển thị sản phẩm trong giỏ hàng
displayCart();


/* ----------------------- Phần bên dưới là script cho form xác nhận thanh toán ----------------------- */

// Hiển thị form điền thông tin đặt hàng khi nhấn nút "Thanh toán"
document.getElementById("paymentBtn").addEventListener("click", function () {
    document.querySelector(".popup").style.display = "flex";
})

// Một số cài đặt cho form đặt hàng
let frm = document.ordFrm;

frm.confirmBtn.onclick = function() {


    // Biến re dùng để kiểm tra SDT có hợp lệ hay không (chỉ chấp nhận nhập số nguyên)
    let re = /^[(]{0,1}[0-9]{3}[)]{0,1}[-\s\.]{0,1}[0-9]{3}[-\s\.]{0,1}[0-9]{4}$/;

    if (!frm.orderName.value) {
        alert("Hãy nhập tên người nhận hàng hợp lệ!");
        frm.orderName.focus();
    }
    else if (!frm.orderAddress.value) {
        alert("Hãy nhập địa chỉ giao hàng hợp lệ!");
        frm.orderAddress.focus();
    }
    else if (!frm.orderEmail.value) {
        alert("Hãy nhập Email hợp lệ!");
        frm.orderEmail.focus();
    }
    else if (!re.test(frm.orderPhoneNumber.value)) {
        alert("Hãy nhập SDT người nhận hàng hợp lệ!");
        frm.orderPhoneNumber.focus();
    }
    // Hiển thị thông tin đã nhập
    else {
        frm.confirmAlert.value = "Bạn đã đặt hàng thành công! Thông tin đơn hàng sẽ được gửi vào email của bạn";
        frm.nameResult.value  = "Khách hàng: " + frm.orderName.value;
        frm.addrResult.value  = "Địa chỉ giao hàng: " + frm.orderAddress.value;
        frm.phoneResult.value = "SDT liên lạc: " + frm.orderPhoneNumber.value;
        document.getElementById('confirm').src='images/Icon/checked.png';  
    }
}

// Tắt form đặt hàng khi nhấn nút "X"
document.querySelector(".close").addEventListener("click", function() {
    document.querySelector(".popup").style.display = "none";
})