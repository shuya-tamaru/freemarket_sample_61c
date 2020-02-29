class ItemsController < ApplicationController
  
  def index
    @categorys = [1, 200, 893, 680]
    @itemCategorys = []
    @categorys.each_with_index do |category, i|
      @itemCategorys[i] = []
      @itemCategorys[i] << Category.find(category).name
      @items = []
      @items << Item.where(category_id: category).last(10).reverse
      @items.each do |item|
        @itemCategorys[i] << item
      end
    end
    @brands = [1, 3, 4, 2]
    @item_brands = []
    @brands.each_with_index do |brand, i|
      @item_brands[i] = []
      @item_brands[i] << Brand.find(brand).name
      @items = []
      @items << Item.where(brand_id: brand).last(10).reverse
      @items.each do |item|
        @item_brands[i] << item
      end
    end
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
    # 現状viewからidのvalueを送信出来ないので仮のidを入れています
    @item = Item.where(id: 1)
    @item.update(transaction_status: 0)
    # if @item.update_attribute(:transaction_status, 0)
    #   redirect_to controller: 'products', action: 'show', notice: "出品を停止しました"
    # else
    #   redirect_to controller: 'products', action: 'show', notice: "出品を停止出来ませんでした"  
    # end
  end

  def edit
  end

  private
  def item_params
    params.require(:item).permit(:fee_side, :category_id, :name, :discription, :brand_id, :item_status, :shipping_charge, :shipping_way, :sipping_days, :price, :region, images_attributes:[:image, :id]).merge(user_id: current_user.id)
  end
end
