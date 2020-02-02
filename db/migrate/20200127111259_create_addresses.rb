class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :zip_code,        null: false
      t.integer :prefecture,      null: false, default: 0
      t.string :city,             null: false
      t.string :address,          null: false
      t.string :building
      t.string :phone_tel
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
