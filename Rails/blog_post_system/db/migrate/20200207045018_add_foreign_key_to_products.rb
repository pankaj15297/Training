class AddForeignKeyToProducts < ActiveRecord::Migration[6.0]
  def change
  	add_reference :products, :user
  	add_foreign_key :products, :users
  end
end
