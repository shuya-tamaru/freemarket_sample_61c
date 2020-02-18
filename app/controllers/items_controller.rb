class ItemsController < ApplicationController
  
  def index
    @test
    @products_c = ["レディース", "メンズ", "家電・スマホ・カメラ", "おもちゃ・ホビー・グッズ"]
    @products_b = ["シャネル","ルイヴィトン","シュプリーム","ナイキ"]
  end

  def new
  end

  def edit
  end

  def update
  end
end
