//pay.jpとは、クレジット決済代行サービス。
//ユーザがpay.jpにカード情報を送信し、トークンが渡される。そのトークンを使い、支払いを行う。2回目以降の買い物ではクレジットカードとユーザを紐づける「ユーザID」を指定するだけで支払いを行える。
//payjp.jsはカード情報をトークン化することのみに特化したライブラリ。
//jsファイルで入力されたカード情報を取得し、payjpのサーバーと通信を行い、トークンを取得する。
//作成されたtokenをコントローラに送る。
//ポイントはname属性。特に最後の方のname="payjp_token"はコントローラ側でも使う！

$(document).on('turbolinks:load', function() {
  var form = $("#charge-form");
  Payjp.setPublicKey('PAYJP_PUBLIC_KEY'); //setPublicKey(key)：認証のための公開鍵をセット。keyは必須、str型。

  $("#charge-form").on("click", "#submit-button", function(e) {
    e.preventDefault(); //clickを実行してページが更新されるのを防ぐ。formタグのaction属性を指定していないと同一ページにリダイレクトされる(かな)。
    form.find("input[type=submit]").prop("disabled", true);
    var card = {
        number: parseInt($("#payment_card_no").val()), //parseInt(str, radix)：strは解析する値であり文字列(文字列でなければ文字列に変換される)。radixは前述の文字列に対する基数であり、何も書かなければ10になる。つまり10進法表記になる。戻り値は与えられた文字列を解析した整数値であり、最初の文字を数値に変換できなければNaNが返される。
        cvc: parseInt($("#cvc_code").val()),
        exp_month: parseInt($("#card_expire_mm").val()),
        exp_year: parseInt($("#card_expire_yy").val())
    };
    Payjp.createToken(card, function(status, response) { 
//createToken(card[, options], callback)：PAY.JPのサーバーと通信し、カード情報の認証を行い、トークンを作成。cardは必須、Object型、カード情報であり、number exp_year exp_monthが必須、cvcは任意でいずれもstr型。optionsはテナントID指定関係で今回は不要。callbackは必須、レスポンス取得時に呼ばれるコールバック関数、第1引数にHTTPステータス、第2引数にtokenオブジェクト。
      if (stauts == 200) {
        $(".number").removeAttr("name");
        $(".cvc").removeAttr("name");
        $(".exp_month").removeAttr("name");
        $(".exp_year").removeAttr("name");
//removeさせることでカード情報をparamsの値として含まれないようにする。

        var token = response.id; //response.idでトークンのidを取得できる。
        $("#charge-form").append($('<input type="hidden" name="payjp_token" class="payjp-token" />').val(token));
//コントローラにトークンIDをparamsとして渡せるようにする。通信が成功し、statusが200になったとき、typeがhiddenとなっているinput要素が追加される。これが値として変数tokenを取得しているのでresponse.idがコントローラでparams[:payjp_token]として受け取ることが可能になる。
        $("#charge-form").get(0).submit();
//e.preventDefault();として停止していたイベントをsubmitで実行している。
      }
      else {//else文はエラー処理。
        alert("error")
        form.find('button').prop('disabled', false);
      }
    });
  });
});

// 参考
// https://qiita.com/kumasuke/items/3353e954eaef7e362577
// https://qiita.com/Ikuy_h/items/0d7acf619f643f97d413
// https://pay.jp/docs/api/#payjp-api
// https://ryu-nishida.blogspot.com/2017/06/span-display-block-overflow-hidden.html