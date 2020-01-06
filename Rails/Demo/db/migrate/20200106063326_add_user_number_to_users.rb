class AddUserNumberToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :user_number, :integer
    add_index :users, :user_number
  end
end
