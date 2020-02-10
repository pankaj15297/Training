class DropTableCompanies < ActiveRecord::Migration[6.0]
  def change
  	drop_table :companies
  end
end
