class ChangePriceDecimalsToProducts < ActiveRecord::Migration
  def change
    change_column :products, :price, 'numeric USING CAST(column_name AS numeric', precision: 6, scale: 2
  end
end
