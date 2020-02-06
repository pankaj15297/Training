class CreateJoinTableUserPost < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :posts, table_name: :user_posts do |t|
      # t.index [:user_id, :post_id]
      # t.index [:post_id, :user_id]
    end
  end
end
