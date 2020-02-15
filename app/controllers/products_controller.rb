class ProductsController < ApplicationController
  def index
  end

  def new
  end

  def create
  @item = Item.new(item_params)
    if @item.save
      redirect_to root_path, notice: "商品を投稿しました"
    else
      redirect_to new_item_path, notice: "error"
    end
  end

  private

  def item_params
    binding.pry
    params.require(:item).permit(:name, :discription, :brand, :saler_user_id, :item_status, :shipping_charge, :shipping_way, :sipping_days, :price, :region, images_attributes: :image)
  end
  
end
