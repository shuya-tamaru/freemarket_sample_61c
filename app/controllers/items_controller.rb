class ItemsController < ApplicationController
  
  def index
    @test
    @products_c = ["レディース", "メンズ", "家電・スマホ・カメラ", "おもちゃ・ホビー・グッズ"]
    @products_b = ["シャネル","ルイヴィトン","シュプリーム","ナイキ"]
  end

  def new
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

end
