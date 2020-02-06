class RemoveRefFromPosts < ActiveRecord::Migration[6.0]
  def change
  	remove_reference :posts, :user
  end
end
