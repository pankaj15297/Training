class DropTableBranches < ActiveRecord::Migration[6.0]
  def change
  	drop_table :branches
  end
end
