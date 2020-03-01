//jsファイルで入力したカード情報を取得し、payjpのサーバーと通信を行い、トークンを取得する。
//作成されたtokenはコントローラに送る。
document.addEventListener(
  "DOMContentLoaded", e => {
    if (document.getElementById("token_submit") != null) { //token_submitというidがnullの場合、下記コードを実行しない
      Payjp.setPublicKey('PAYJP_PUBLIC_KEY'); //認証のための公開鍵をセット。setPublicKey(key)：keyは必須でstr型。
      var btn = document.getElementById("token_submit"); //IDがtoken_submitの場合に取得される
      btn.addEventListener("click", e => {
        e.preventDefault(); //clickを実行してページが更新されるのを防ぐ
        var card = {
          number: document.getElementById("card_number").value,
          cvc: document.getElementById("cvc").value,
          exp_month: document.getElementById("exp_month").value,
          exp_year: document.getElementById("exp_year").value
        }; //入力されたデータを取得
        Payjp.createToken(card, (status, response) => {
          //createToken(card[, options], callback)：PAY.JPのサーバーと通信し、カード情報の認証を行い、トークンを作成。cardは必須、Object型、カード情報であり、number exp_year exp_monthが必須、cvcは任意でいずれもstr型。optionsはテナントID指定関係で今回は不要。callbackは必須、レスポンス取得時に呼ばれるコールバック関数、第1引数にHTTPステータス、第2引数にtokenオブジェクト。
          if (status === 200) { //成功した場合
            $("#card_number").removeAttr("name");
            $("#cvc").removeAttr("name");
            $("#exp_month").removeAttr("name");
            $("#exp_year").removeAttr("name"); //以上4つのデータを自サーバにpostしないようにparamsの値として含まれないようにする
            $("#card_token").append(
              $('<input type="hidden" name="payjp-token">').val(response.id)
            ); //コントローラにトークンIDをparamsとして渡せるようにする。通信が成功し、statusが200になったとき、typeがhiddenとなっているinput要素が追加される。これが値として変数tokenを取得しているのでresponse.idがコントローラでparams[:payjp-token]として受け取ることが可能になる。
            document.inputForm.submit();
            alert("登録が完了しました"); //確認用
          } else {
            alert("カード情報が正しくありません。"); //確認用
          }
        });
      });
    }
  },
  false
);