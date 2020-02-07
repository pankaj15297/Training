class CreateJoinTableUserProduct < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :products, column_options: { null: true }, table_name: :user_products do |t|
      # t.index [:user_id, :product_id]
      # t.index [:product_id, :user_id]
    end
  end
end
