class AddRefToEachTables < ActiveRecord::Migration[6.0]
  def change
  	add_reference :posts, :user, foreign_key: true
  	add_reference :posts, :category, foreign_key: true
  	add_reference :likes, :user, foreign_key: true
  	add_reference :likes, :post, foreign_key: true
  	add_reference :comments, :user, foreign_key: true
  	add_reference :comments, :post, foreign_key: true
  end
end
