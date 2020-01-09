class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.integer :price
      t.integer :number

      t.timestamps
    end
  end
end
