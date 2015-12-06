class AddActiveColumnToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :active, :boolean
  end
end
