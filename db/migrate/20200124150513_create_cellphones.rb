class CreateCellphones < ActiveRecord::Migration[5.2]
  def change
    create_table :cellphones do |t|
      t.string :number, null: false, unique: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
