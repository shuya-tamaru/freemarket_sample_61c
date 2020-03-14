class ItemsController < ApplicationController
  
  def index
    @categorys = [1, 200, 893, 680]
    @itemCategorys = []
    @categorys.each_with_index do |category_id, i|
      @itemCategorys[i] = []
      @itemCategorys[i] << Category.find(category_id).name
      @items = []
      grandchild_categorys = []
      category = Category.find(category_id)
      category.children.each do |gcc|
        grandchild_categorys << gcc.child_ids
        grandchild_categorys.flatten!
      end
      @items << Item.where(category_id: grandchild_categorys).last(10).reverse
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
    @items = Item.where.not(id: params[:id]).where(saler_user_id: @user, transaction_status: 1).last(6).reverse
    @brand = Brand.find(@item.brand_id)
    @categorys = Category.find(@item.category_id)
    @subitems = Item.where.not(id: params[:id]).where(category_id: @categorys).where(brand_id: @brand, transaction_status: 1).last(6).reverse
  end

  def edit
  end

  def update
    @item = Item.find(params[:id])
    if @item.transaction_status == 1
      @item.update(transaction_status: 0)
    elsif @item.transaction_status == 0
      @item.update(transaction_status: 1)
    end
    redirect_to controller: 'products', action: 'show', id: @item.id
  end

  def edit
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to root_path

  end

  private
  def item_params
    params.require(:item).permit(:fee_side, :category_id, :name, :discription, :brand_id, :item_status, :shipping_charge, :shipping_way, :sipping_days, :price, :region, images_attributes:[:image, :id]).merge(user_id: current_user.id)
  end
end
