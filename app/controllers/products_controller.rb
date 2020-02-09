class ProductsController < ApplicationController
  def index
    @test
    @products_c = ["レディース", "メンズ", "家電・スマホ・カメラ", "おもちゃ・ホビー・グッズ"]
    @products_b = ["シャネル","ルイヴィトン","シュプリーム","ナイキ"]
  end

  def new
  end

  def create
  @item = Item.new(item_params)
    if @item.save
      redirect_to :index
    else
      redirect_to :new
    end
  end

  private

  def item_params
    params.require(:items).permit(:name, :discription, :grand_chaild_category, :brand, :saler_user_id, :item_status, :shipping_charge, :shipping_way, :shipping_days, :price, :region).validate(:images)
  end
  
end
