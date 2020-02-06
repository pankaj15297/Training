class AddConstraintToCategories < ActiveRecord::Migration[6.0]
  def change
  	change_column_null :categories, :name, false

  	change_table :categories do |t|
  	  t.change :name, :string
  	end
  end
end
