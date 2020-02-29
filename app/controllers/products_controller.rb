class ProductsController < ApplicationController
  before_action :set_item, only: [:edit, :update]

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

  def show
    # 現状viewからidのvalueを送信出来ないので仮のidを入れています
    @item = Item.where(id: 1)
    # @item = Item.find(params[:id])
  end

  def edit

  end


  def update
    if current_user.id == @item.saler_user_id && @item.update(item_params)
      redirect_to root_path, notice: "商品を情報を更新しました"
    else
      #更新できなかった場合とりあえず仮でindexに飛ばしてます。
      redirect_to root_path, notice: "商品を情報を更新できませんでした"
    end

  end

  private

  def item_params
    params.require(:item).permit(:fee_side, :category_id, :name, :discription, :brand_id, :item_status, :shipping_charge, :shipping_way, :sipping_days, :price, :region, images_attributes:[:image, :id]).merge(saler_user_id: current_user.id.to_i, transaction_status: 1) 
  end

  def set_item
    @item = Item.find(params[:id])
  end
  
  # def stop_params
  #   params.require(:item).permit(:key).merge(transaction_status: 0) 
  # end
end
