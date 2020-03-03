class RemoveContentsFromCards < ActiveRecord::Migration[5.2]
  def change
    remove_column :cards, :number, :integer
    remove_column :cards, :validated_date_year, :integer
    remove_column :cards, :validated_date_month, :integer
    remove_column :cards, :security_number, :integer
  end
end
