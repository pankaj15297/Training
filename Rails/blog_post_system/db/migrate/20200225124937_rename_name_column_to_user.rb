class RenameNameColumnToUser < ActiveRecord::Migration[6.0]
  def change
  	rename_column :users, :name, :firstname
  end
end
