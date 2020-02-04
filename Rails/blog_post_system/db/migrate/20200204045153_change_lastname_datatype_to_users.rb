class ChangeLastnameDatatypeToUsers < ActiveRecord::Migration[6.0]
  def change
  	change_column :users, :lastname, 'integer using cast(lastname as integer)'
  end
end
