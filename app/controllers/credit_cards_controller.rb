class CreditCardsController < ApplicationController

  require "payjp"

  def index
  end

  def new # カード情報の追加
    card = Card.where(user_id: current_user.id) #Cardモデルからログイン中ユーザの情報を変数cardに入れる。
    redirect_to action: "show" if card.exists? #すでにcardが存在していればshowアクションへ飛ぶ。
  end

  def pay #payjpとCardのDBを作成
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"] #payjpと情報をやり取りするために秘密鍵をAPIキーに入れる。
    if params['payjp-token'].blank?
      redirect_to action: "new"
    else
      customer = Payjp::Customer.create(
        description: '登録テストです。', #なくてもいいがわかりやすいので。
        card: params['payjp-token'], #payjpでクレジットカードからトークンに変換されると、その情報はpayjp-tokenという名前でPOSTされる。
        metadata: {user_id: current_user.id} #なくてもいいがわかりやすいので。単なる説明文みたいなものです。
      )
      @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card) #customer.idを自分たちのDBに保存することで、次回からカード情報を入力することなく、customer.idを指定して支払いできるようになる。default_cardはpayjpのレスポンスなので、ここでは定義していない。
      if @card.save
        redirect_to action: "show"
      else
        redirect_to action: "pay"
      end
    end
  end

  def show #DBのカード情報をpayjpに送り、customer情報を取り出す。
    card = Card.where(user_id: current_user.id).first #ログイン中ユーザの１番目のカードを取る。
    if card.blank?
      redirect_to action: "new" #カードがなければnewへ
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(card.customer_id) #カードのcustomer情報をpayjpに送り、取り出した情報を変数customerに入れる。
      @default_card_information = customer.cards.retrieve(card.card_id) #変数customerのカードのカードIDをデフォルトにする。default_card_informationはhamlで使います。
    end
  end

  def delete #payjpとCardのDBを削除
    card = Card.where(user_id: current_user.id).first
    if card.present?
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(card.customer_id)
      customer.delete
      card.delete
    end
    redirect_to action: "new"
  end
end
