class AddUserData < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :lastname, :string, null: false
    add_column :users, :ci, :string, null: false, unique: true
    add_column :users, :phone, :string
    add_column :users, :position, :string, null: false
    add_column :users, :department, :string, null: false
  end
end
