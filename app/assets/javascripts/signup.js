$(function() {
  var password  = '#js-password';
  var passcheck = '#js-passcheck';

    $(passcheck).change(function() {
      if ($(this).prop('checked')) {
        $(function(){
          $(password).on('input', function(){
            var input_text = $(password).val();
            $('.contents3__entry__passwordResult').text(input_text);
            $('.contents3__entry__passwordResult').show();
          })
        });
      } else {
        $(function(){
          $('.contents3__entry__passwordResult').hide();
        });
      }
  });
});

// $(function() {
//   var password  = '#js-password';
//   var passcheck = '#js-passcheck';

//   changeInputtype(password, passcheck);
// });

// function changeInputtype(password, passcheck) {
//   $(passcheck).change(function() {
//       if ($(this).prop('checked')) {
//         $(function(){
//           var input_text = $(password).val();
//           $('.contents3__entry__passwordResult').text(input_text);
//           $('.contents3__entry__passwordResult').show();
//         });
//       } else {
//         $(function(){
//           $('.contents3__entry__passwordResult').hide();
//         });
//       }
//   });
// }

$(function() {
  var password  = '#js-password';
  var passcheck = '#js-passcheck';

  $(passcheck).change(function() {
    if ($(this).prop('checked')) {
      $(function(){
        $(password).on('input', function(){
          var input_text = $(this).val();
          $('.passwordResult').text(input_text);
        });
      });
    } else {
      $(function(){
        $(password).on('input', function(){
          $('.passwordResult').text();
        });
      });
    }
  });
});

// 参考
// パスワード表示時にマスキング有無を選択できるようにする方法 https://ajike.github.io/password-masking/
// テキストボックスのリアルタイムな入力をイベントとして発火させる https://kinocolog.com/jquery_input/
