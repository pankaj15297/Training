class AddColumnPaidToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :paid, :string, :default => "No"
  end
end
