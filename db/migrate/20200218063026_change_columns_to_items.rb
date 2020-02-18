class ChangeColumnsToItems < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :item_status, :integer
    change_column :items, :shipping_way, :integer
    change_column :items, :fee_side, :integer
    change_column :items, :sipping_days, :integer
    change_column :items, :transaction_status, :integer
  end
end
