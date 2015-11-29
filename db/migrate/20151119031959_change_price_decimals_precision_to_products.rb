class ChangePriceDecimalsPrecisionToProducts < ActiveRecord::Migration
  def change
        change_column :products, :price, 'numeric USING CAST(column_name AS numeric', precision: 8, scale: 2
  end
end
