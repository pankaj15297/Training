class CreateProgrammers < ActiveRecord::Migration[6.0]
  def change
    create_table :programmers do |t|
      t.string :name

      t.timestamps
    end
  end
end
