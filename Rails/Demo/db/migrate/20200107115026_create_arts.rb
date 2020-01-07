class CreateArts < ActiveRecord::Migration[6.0]
  def change
    create_table :arts do |t|
      t.string :name
      t.boolean :published

      t.timestamps
    end
  end
end
