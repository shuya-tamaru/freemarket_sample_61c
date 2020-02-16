class RemoveShippingChargeFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :shipping_charge, :string
  end
end
