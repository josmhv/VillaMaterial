class CreateAddingProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :adding_products do |t|
      t.string "name"
      t.text "description"
      t.string "image"
      t.integer "cart_id"
      t.integer "price"
      t.string "unit"
      t.integer "qnt"
      t.index ["cart_id"], name: "index_adding_products_on_cart_id"

      t.timestamps
    end
  end
end
