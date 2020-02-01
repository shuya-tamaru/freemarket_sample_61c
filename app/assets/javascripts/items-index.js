$(function () {
  // スクロールしたら商品がフェードインするやつ
  let scrollMinus = 40; 
  let scrollPoint = 0; 
  $(window).on('scroll load', function(){
    let scrollTop = $(this).scrollTop();
    let scrollBtm = scrollTop + $(this).height();
    scrollPoint = scrollBtm - scrollMinus;
    $('.product').each( function() {
      let thisHeight = $(this).offset().top;
      if (scrollPoint > thisHeight) {
        $(this).animate({ 
          opacity: 1
        }, 300 );
      }
    });
  });
  
  // スライドイメージが左にスライドする(時間で自動でなる方向)
  leftSlide = function () {
    $(".slideImage2").animate({
      left: "0%"
    }, 500, function () {
      $(this).addClass('slideImage1');
      $(this).removeClass('slideImage2');
    });
    $(".slideImage1").animate({
      left: "-100%"
    }, 500, function () {
      $(this).addClass('slideImage2');
      $(this).removeClass('slideImage1');
      $(this).css("left", "100%");
    });
    setTimeout(function(){
      $(".slide__circles__left, .slide__circles__right").toggleClass("bright");
    },300);
  }
  // スライドイメージが右にスライドする(nav矢印の左側を押した時になる方向)
  rightSlide = function () {
    $(".slideImage2").css("left", "-100%");
    $(".slideImage1").animate({
      left: "100%"
    }, 500, function () {
      $(this).addClass('slideImage2');
      $(this).removeClass('slideImage1');
      $(this).css("left", "100%");
    });
    $(".slideImage2").animate({
      left: "0%"
    }, 500, function () {
      $(this).addClass('slideImage1');
      $(this).removeClass('slideImage2');
    });
    setTimeout(function(){
      $(".slide__circles__left, .slide__circles__right").toggleClass("bright");
    },300);
  };
  // nav矢印を押した時の処理
  $(".slide__navRight").click(
    function () {
      leftSlide();
    }
  );
  $(".slide__navLeft").click(
    function () {
      rightSlide();
    }
  );
  // 一定時間で自動で左にスライドする処理
  setInterval(leftSlide,8000);
  
})