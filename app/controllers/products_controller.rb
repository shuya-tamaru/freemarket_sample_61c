class ProductsController < ApplicationController

  before_action :set_item, only: [:edit, :update, :show]
  before_action :move_to_signup, except: [:index, :show]

  def index
  end

  def new
    if current_user
      @item =Item.new
      @item.images.build
    else
      redirect_to new_user_session_path
    end
  end

  def create
    item = Item.new(item_params)
    item.save!
    redirect_to root_path, notice: "商品を投稿しました"
    rescue
    redirect_to new_product_path, status: 400, notice: "error"
  end

  def show
    @user = User.find(@item.saler_user_id)
    @items = Item.where.not(id: params[:id]).where(saler_user_id: @user, transaction_status: 1).last(6).reverse
    @brand = Brand.find(@item.brand_id)
    @categorys = Category.find(@item.category_id)
    @subitems = Item.where.not(id: params[:id]).where(category_id: @categorys).where(brand_id: @brand, transaction_status: 1).last(6).reverse
    # 以下のコードが正ですが、動作確認のためにコメントアウトしています
    # if @item.saler_user_id == current_user.id
    #   @user = User.find(@item.saler_user_id)
    #   @items = Item.where.not(id: params[:id]).where(saler_user_id: @user, transaction_status: 1).last(6).reverse
    #   @brand = Brand.find(@item.brand_id)
    #   @categorys = Category.find(@item.category_id)
    #   @subitems = Item.where.not(id: params[:id]).where(category_id: @categorys).where(brand_id: @brand, transaction_status: 1).last(6).reverse
    # else
    #   redirect_to root_path
    # end
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

  def move_to_signup
    redirect_to new_user_session_path unless user_signed_in?
  end
  
  # def stop_params
  #   params.require(:item).permit(:key).merge(transaction_status: 0) 
  # end
end
