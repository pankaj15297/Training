class AddConstraintOnAddressContactToUsers < ActiveRecord::Migration[6.0]
  def change
  	change_column_null :users, :contact, false
  	change_column :users, :address, :string, :default => "No Address"
  end
end
