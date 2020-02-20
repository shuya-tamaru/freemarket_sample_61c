class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.integer :number,                null: false
      t.integer :validated_date_year,   null:false
      t.integer :validated_date_month,  null:false
      t.integer :security_number,       null:false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
