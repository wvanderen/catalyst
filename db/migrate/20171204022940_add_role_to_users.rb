class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :integer
    add_column :users, :experience, :integer
  end
end
