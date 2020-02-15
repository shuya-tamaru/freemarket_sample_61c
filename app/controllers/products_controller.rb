class ProductsController < ApplicationController
  def index
  end

  def new
    @item =Item.new
    @item.images.build
  end

  def create
    item = Item.new(item_params)
    item.save!
    redirect_to root_path


    # if @item.save
    #   redirect_to root_path, notice: "商品を投稿しました"
    # else
    #   redirect_to new_product_path, notice: "error"
    # end
  end

  private

  def item_params
    params.require(:item).permit(:fee_side, :category_id, :name, :discription, :brand_id, :item_status, :shipping_charge, :shipping_way, :sipping_days, :price, :region, images_attributes:[:image, :id]).merge(saler_user_id: current_user.id.to_i, transaction_status: 1) 
  end
  
end
