class DropTableUsersProducts < ActiveRecord::Migration[6.0]
  def change
  	drop_table :user_products
  end
end
