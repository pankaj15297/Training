class DropTablePostsUsers < ActiveRecord::Migration[6.0]
  def change
  	drop_table :posts_users
  end
end
