class ProductsController < ApplicationController
  def index
  end

  def new
    @item =Item.new
    @item.images.build
  end

  def create
    begin
      item = Item.new(item_params)
      item.save!
      redirect_to root_path, notice: "商品を投稿しました"
    rescue ActiveRecord::RecordInvalid => e
      redirect_to new_product_path, status: 400, notice: "error"
    end
  end

  def edit
    @item = Item.find(params[:id])
    @item.images.build
  end

  private

  def item_params
    params.require(:item).permit(:fee_side, :category_id, :name, :discription, :brand_id, :item_status, :shipping_charge, :shipping_way, :sipping_days, :price, :region, images_attributes:[:image, :id]).merge(saler_user_id: current_user.id.to_i, transaction_status: 1) 
  end
  
end
