class ChangePriceDecimalsPrecisionToProducts < ActiveRecord::Migration
  def change
        change_column :products, :price, 'numeric USING CAST(price AS numeric', precision: 8, scale: 2
  end
end
