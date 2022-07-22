class AddQntToAddingProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :adding_products, :qnt, :integer
  end
end
