class AddPriceToAddingProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :adding_products, :price, :integer
    add_column :adding_products, :unit, :string
  end
end
