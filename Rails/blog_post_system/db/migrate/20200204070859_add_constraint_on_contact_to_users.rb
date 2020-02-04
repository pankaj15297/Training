class AddConstraintOnContactToUsers < ActiveRecord::Migration[6.0]
  def up
  	execute "ALTER TABLE users ADD CONSTRAINT contact CHECK (contact BETWEEN 1000000000 AND 9999999999)"
  end

  def down
  	execute "ALTER TABLE users DROP CONSTRAINT contact"
  end
end
