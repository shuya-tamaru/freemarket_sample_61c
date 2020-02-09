$(function() {
  var password  = '#js-password';
  var passcheck = '#js-passcheck';

  $(password).on("keyup",function() {
    $(".contents3__entry__passwordResult__string").text($(password).val());
  });
  $(passcheck).on('change', function () {
    $('.contents3__entry__passwordResult__string').toggle();
  });
});

// 参考
// パスワード表示時にマスキング有無を選択できるようにする方法 https://ajike.github.io/password-masking/
// テキストボックスのリアルタイムな入力をイベントとして発火させる https://kinocolog.com/jquery_input/