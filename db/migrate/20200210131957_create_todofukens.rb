class CreateTodofukens < ActiveRecord::Migration[5.2]
  def change
    create_table :todofukens do |t|
      t.integer :prefecture_id
      t.string :name

      t.timestamps
    end
  end
end
