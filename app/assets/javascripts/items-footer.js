$(function () {
  // ホバーした時に文字とアイコンを青くして、リストを出現させる
  $(".mypage").hover(
    function () {
      $(this).find(".headerBottom__list__link").css("color", "#0095ee");
      $(".mypage__list").css("display", "block");
    },
    function(){
      $(".mypage__list").css("display", "none");
      $(this).find(".headerBottom__list__link").css("color", "black");
    }
  );
  $(".hoverList").hover(
    function(){
      $(this).find(".hoverList__list").css("display", "block");
      $(this).find(".headerBottom__list__link__icon1").css("color", "#0095ee");
      $(this).find(".headerBottom__list__link").css("color", "#0095ee");
    },
    function(){
      $(this).find(".hoverList__list").css("display", "none");
      $(this).find(".headerBottom__list__link__icon1").css("color", "rgb(174, 174, 174)");
      $(this).find(".headerBottom__list__link").css("color", "black");
    }
  );
  // 「カテゴリーから探す」の二重のリストになっている部分
  $(".nestList").hover(
    function(){
      $(this).find(".nestList__list").css("display", "block");
    },
    function(){
      $(this).find(".nestList__list").css("display", "none");
    }
  );
  // マイページのリストでホバーしたら背景とアイコンの色が変わってアイコンが少しずれる
  $(".mypage__list__myInfomation__links__link").hover(
    function () {
      $(this).css("background-color", "rgb(238, 238, 238)");
      $(this).animate({ paddingRight: "8px" }, 400 );
      $(this).find(".mypage__list__myInfomation__links__link__icon").css("color", "black");
    },
    function () {
      $(this).css("background-color", "white");
      $(this).animate({ paddingRight: "12px" }, 400);
      $(this).find(".mypage__list__myInfomation__links__link__icon").css("color", "rgb(209, 208, 208)");
    }
  );
})