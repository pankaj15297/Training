class AddColumnLastnamePassword < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :lastname, :string
  	add_column :users, :password, :string
  end
end
