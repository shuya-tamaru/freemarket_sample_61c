class OrdersController < ApplicationController

  require 'payjp'
  before_action :set_card, only: [:new, :pay]

  def new
    if @card.blank?
      redirect_to controller: "credit_cards", action: "new" #登録された情報がない場合、クレジットカード登録画面に移動。
    else #以下はcredit_cards_controllerの内容にもあるので意味はそちらをご参照。
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @default_card_information = customer.cards.retrieve(@card.card_id)
    end
    @image = @item.images.last(params[:item_id]) #複数画像のうち最初の１枚をとる。
    @address = current_user.address
  end

  def pay
    @item.update(buyer_user_id: current_user.id) #購入者のIDを保存
    unless user_signed_in? && current_user.id != @item.saler_user_id && @item.transaction_status != 1 && request.referer&.include?("/orders/#{@item.id}/new")
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      Payjp::Charge.create(
        amount: @item.price, #支払い金額
        customer: @card.customer_id, #顧客ID
        currency: 'jpy' #日本円
      )
      redirect_to ({action: 'done', id: @item.id})  #購入完了画面に遷移
    else
    end
    @item.update(transaction_status: 2) #購入済ステータスにupdate
  end

  def done
    @item = Item.find(params[:id])
    unless user_signed_in? && current_user.id != @item.saler_user_id && @item.transaction_status != 1 && request.referer&.include?("/orders/#{@item.id}/new")
      redirect_to root_path
    else
    end
  end

  private

  def set_card
    @item = Item.find(params[:id])
    if user_signed_in? && current_user.id != @item.saler_user_id && @item.transaction_status == 1
      @card = Card.find_by(user_id: current_user.id) #credit_cards_controllerで使用したCardテーブルからpayjpの顧客IDを検索
    else
      redirect_to root_path
    end
  end

end
