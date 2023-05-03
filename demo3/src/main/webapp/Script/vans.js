/* My JavaScript code */
/* Lọc sản phẩm theo giá tiền */
function changeProductList(type){
    $(document).ready(function(){
        $("button").click(function(){
          $(".btn").removeClass("active");
          $(this).toggleClass("active");
        });
      });
    console.log(type);

    // document.getElementById(type).style.display = 'block';
    switch (type) {
        case 'all':
            document.getElementById('1stRange').style.display = 'block';
            document.getElementById('2ndRange').style.display = 'block';
            document.getElementById('3rdRange').style.display = 'block';
            document.getElementById('4thRange').style.display = 'block';
            break;
        case '1stRange':
            document.getElementById('1stRange').style.display = 'block';
            document.getElementById('2ndRange').style.display = 'none';
            document.getElementById('3rdRange').style.display = 'none';
            document.getElementById('4thRange').style.display = 'none';
            break;
        case '2ndRange':
            document.getElementById('1stRange').style.display = 'none';
            document.getElementById('2ndRange').style.display = 'block';
            document.getElementById('3rdRange').style.display = 'none';
            document.getElementById('4thRange').style.display = 'none';
            break;
        case '3rdRange':
            document.getElementById('1stRange').style.display = 'none';
            document.getElementById('2ndRange').style.display = 'none';
            document.getElementById('3rdRange').style.display = 'block';
            document.getElementById('4thRange').style.display = 'none';
            break;
        case '4thRange':
            document.getElementById('1stRange').style.display = 'none';
            document.getElementById('2ndRange').style.display = 'none';
            document.getElementById('3rdRange').style.display = 'none';
            document.getElementById('4thRange').style.display = 'block';
            break;
    }
}

function sizePicker() { 
    $(document).ready(function(){
        $("button").click(function(){
          $(".size-number").removeClass("sizeActive");
          $(this).toggleClass("sizeActive");
        });
      });
}





    /**
 * 
 */