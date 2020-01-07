class CreateClientsProgrammers < ActiveRecord::Migration[6.0]
  def change
    create_table :clients_programmers, id: false do |t|
      t.references :client, :programmer, null: false, foreign_key: true
    end
  end
end
