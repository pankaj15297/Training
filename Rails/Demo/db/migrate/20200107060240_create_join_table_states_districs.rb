class CreateJoinTableStatesDistrics < ActiveRecord::Migration[6.0]
  def change
    create_join_table :states, :districs, table_name: :india do |t|
      t.index [:state_id, :distric_id]
      t.index [:distric_id, :state_id]
      # t.index :state_id
      # t.index :distric_id
    end
  end
end
