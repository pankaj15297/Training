class AddColumnMobileToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :mobile, :bigint
  end
end
