# テスト用コントローラ
Payjp.api_key = ENV["PAYJP_SECRET_KEY"] #APIキーの呼び出し。
customer = Payjp::Customer.retrieve(params[:customer_id]) #Payjp::Customer.retrieve('#{customer_id}')でpay.jpに顧客idがあるのか確認。customer_idカラムはcardモデルに追加している。ちなみにretrieveは取り戻すという意味。
customer = Payjp::Customer.create(description: 'test') #顧客の作成。descriptionは無くてもいい。コントローラで行なう処理により表現が変わるが、顧客を作成しその顧客のカードを作成するならこちらと下記。
customer.cards.create(card: params[:payjp_token]) #カードの作成。