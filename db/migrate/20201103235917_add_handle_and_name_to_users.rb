class AddHandleAndNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :handle, :string
    add_column :users, :name, :string
  end
end
