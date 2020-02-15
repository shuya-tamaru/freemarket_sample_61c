class AddReferencesToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :category, index: true, foreign_key: true
    add_reference :items, :brand, null: false, index: true, foreign_key: true
  end
end
