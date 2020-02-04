class RenameColumnToUsers < ActiveRecord::Migration[6.0]
  def change
  	rename_column :users, :mobile, :contact 
  end
end
