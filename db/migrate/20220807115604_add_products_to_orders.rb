class AddProductsToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :products, :text, array: true, default:[]
    add_column :orders, :paid, :integer
    add_column :orders, :user, :string
    add_column :orders, :info, :text, array: true, default:[]
  end
end
