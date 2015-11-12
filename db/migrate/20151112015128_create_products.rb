class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :price
      t.string :description
      t.string :quantity

      t.timestamps null: false
    end
  end
end
