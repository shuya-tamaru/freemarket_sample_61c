$(function() {
 
  // ①タブをクリックしたら発動
  $('.myinfomations__tabs__label li').click(function() {
 
    // ②クリックされたタブの順番を変数に格納
    var index = $('.myinfomations__tabs__label li').index(this);
 
    // ③クリック済みタブのデザインを設定したcssのクラスを一旦削除
    $('.myinfomations__tabs__label li').removeClass('active');
 
    // ④クリックされたタブにクリック済みデザインを適用する
    $(this).addClass('active');
 
    // ⑤コンテンツを一旦非表示にし、クリックされた順番のコンテンツのみを表示
    $('.myinfomations__tabs__contents ul').removeClass('view').eq(index).addClass('view');
  });
});