class AddRefToEachTables < ActiveRecord::Migration[6.0]
  def change
  	add_reference :posts, :user, foreign_key: true
  	add_reference :posts, :category, foreign_key: true
  	add_reference :likes, :user, foreign_key: true
  	add_reference :likes, :post, foreign_key: true
  	add_reference :comments, :user, foreign_key: true
  	add_reference :comments, :post, foreign_key: true

  	change_column_null :posts, :user_id, false
  	change_column_null :posts, :category_id, false
  	change_column_null :likes, :user_id, false
  	change_column_null :likes, :post_id, false
  	change_column_null :comments, :user_id, false
  	change_column_null :comments, :post_id, false
  end
end
