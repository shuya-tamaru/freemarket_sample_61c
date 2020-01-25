class ChangeDatatypeNumberOfCellphones < ActiveRecord::Migration[5.2]
  def change
    change_column :cellphones, :number, :string
  end
end
