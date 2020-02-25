class ItemsController < ApplicationController
  before_action :set_item, only: [:purchase, :pay]
  def index
    @test
    @products_c = ["レディース", "メンズ", "家電・スマホ・カメラ", "おもちゃ・ホビー・グッズ"]
    @products_b = ["シャネル","ルイヴィトン","シュプリーム","ナイキ"]
  end

  def new
  end

  def purchase
  end

  def pay
    @item = Item.find(params[:id])
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    charge = Payjp::Charge.create(
    amount: @item.price,
    card: params['payjp_token'],
    currency: 'jpy'
    )
  end

  def done
  end

  private
  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(
      :name,
      :text,
      :price,
    ).merge(user_id: current_user.id)
  end
end
