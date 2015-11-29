class ChangePriceDecimalsToProducts < ActiveRecord::Migration
  def change
    change_column :products, :price, 'numeric USING CAST(price AS numeric)', precision: 6, scale: 2
  end
end
