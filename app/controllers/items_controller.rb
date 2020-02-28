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

  def edit
  end

  def update
  end
end
