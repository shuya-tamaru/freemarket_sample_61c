class OrdersController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
  begin
    if Item.transaction_status == 1
      #1の場合、出品者は0、購入者は2にしか更新しない
      if Item.saler_user_id == current_user.id
        Item.transaction_status(0).save!
      else
        Item.transaction_status(2).save!
      end
    else
      #1でない場合、出品停止中の場合も含め必ず+1しかされない
      status = Item.transaction_status
      status += 1
      Item.transaction_status(status).save!
    end
  rescue
    render :edit
  end

end
