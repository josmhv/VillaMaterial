class AddImageToAddProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :add_products, :image, :string
  end
end
