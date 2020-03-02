//jsファイルで入力したカード情報を取得し、payjpのサーバーと通信を行い、トークンを取得する。作成されたトークンはコントローラに送る。

// DOM読み込みが完了したら実行
document.addEventListener('DOMContentLoaded', (e) => {
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
      //createToken(card, callback)：PAY.JPのサーバーと通信し、カード情報の認証を行い、トークンを作成。cardは必須、Object型、カード情報であり、number exp_year exp_monthが必須、cvcは任意でいずれもstr型。callbackは必須、レスポンス取得時に呼ばれるコールバック関数、第1引数にHTTPステータス、第2引数にtokenオブジェクト。
      if (status === 200) {
        // 出力（本来はサーバへ送信）
        document.getElementById('card_token').innerHTML = response.card.id;
      //   $("#card_token").append(
      //     $('<input type="hidden" name="payjp-token">').val(response.id)
      //   ); //コントローラにトークンIDをparamsとして渡せるようにする。通信が成功し、statusが200になったとき、typeがhiddenとなっているinput要素が追加される。これが値として変数tokenを取得しているのでresponse.idがコントローラでparams[:payjp-token]として受け取ることが可能になる。
      //   document.InputForm.submit();
      //   alert("登録が完了しました");
      // } else {
      //   alert("カード情報が正しくありませんよ");
      }
    });
  });
}, false);