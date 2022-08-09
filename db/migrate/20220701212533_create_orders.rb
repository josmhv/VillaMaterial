class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.json :products
      t.decimal :paid
      t.string :user
      t.text :info, array: true, default:[]
      t.timestamps
    end
  end
end
