class RechangeTableName < ActiveRecord::Migration[6.0]
  def change
    rename_table :students, :users
  end
end
