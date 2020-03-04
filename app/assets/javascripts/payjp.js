//jsファイルで入力したカード情報を取得し、payjpのサーバーと通信を行い、トークンを取得する。作成されたトークンはコントローラに送る。

// DOM読み込みが完了したら実行
document.addEventListener('DOMContentLoaded', (e) => {
  //tokenというidがnullの場合、それ以下のコードを実行しない
  if (document.getElementById("token") != null){
    // payjp.jsの初期化、下記は公開鍵です。setPublicKey(key)：keyは必須でstr型。
    Payjp.setPublicKey('pk_test_b55fd2a18b0c021513c245e1');
    
    // ボタンのイベントハンドリング
    var btn = document.getElementById('token');
    btn.addEventListener('click', (e) => {
      e.preventDefault(); //clickを実行してページが更新されるのを防ぐ
      
      // 入力されたカード情報を取得
      var card = {
        number: document.getElementById('card_number').value,
        cvc: document.getElementById('cvc').value,
        exp_month: document.getElementById('exp_month').value,
        exp_year: document.getElementById('exp_year').value
      };
      
      // トークン生成
      Payjp.createToken(card, (status, response) => {
        //createToken(card, callback)：PAY.JPのサーバーと通信し、カード情報の認証を行い、トークンを作成。cardはObject型でカード情報を示している。number、exp_year、exp_monthが必須、cvcは任意でいずれもstr型。callbackは必須でレスポンス取得時に呼ばれるコールバック関数、第1引数にHTTPステータス、第2引数にtokenオブジェクト。
        if (status === 200) {
          $("#card_number").removeAttr("name");
          $("#cvc").removeAttr("name");
          $("#exp_month").removeAttr("name");
          $("#exp_year").removeAttr("name");
          //以上4つのデータを自サーバにpostしないようにparamsの値として含まれないようにする
          $("#card_token").append(
            $('<input type="hidden" name="payjp-token">').val(response.id)
          ); //Payjp.createTokenメソッドで返されたトークン情報がresponseであり、response.idというのはこのトークンオブジェクトのidを参照している。通信が成功し、statusが200になったとき、typeがhiddenとなっているトークンIDがコントローラに渡されるようになる。渡されたトークンIDはコントローラでparams[:payjp-token]として受け取ることが可能になる。
          document.CardForm.submit();
          alert("登録が完了しました");
        } else {
          alert("登録が失敗しました");
        }
      });
    });
  }
}, false);