class CreateJoinTableUserOffice < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :offices do |t|
      # t.index [:user_id, :office_id]
      # t.index [:office_id, :user_id]
    end
  end
end
