class ItemsController < ApplicationController
  
  def index
    @test
    @products_c = ["レディース", "メンズ", "家電・スマホ・カメラ", "おもちゃ・ホビー・グッズ"]
    @products_b = ["シャネル","ルイヴィトン","シュプリーム","ナイキ"]
  end

  def new
  end

  def show
    @item = Item.find(params[:id])
    @user = User.find(@item.saler_user_id)
    @brand = Brand.find(@item.brand_id)
  end

  def edit
  end

  def update
  end

  private
  def item_params
    params.require(:item).permit(:fee_side, :category_id, :name, :discription, :brand_id, :item_status, :shipping_charge, :shipping_way, :sipping_days, :price, :region, images_attributes:[:image, :id]).merge(user_id: current_user.id)
  end
end
