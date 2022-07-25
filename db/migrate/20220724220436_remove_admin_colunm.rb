class RemoveAdminColunm < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :admin
    remove_column :users, :admin_users
  end
end
