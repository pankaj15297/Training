class RemoveIndexFromUsers < ActiveRecord::Migration[6.0]
  def change
  	remove_index :users, :name
  end
end
