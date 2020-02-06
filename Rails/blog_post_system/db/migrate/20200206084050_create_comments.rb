class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.boolean :enable

      t.timestamps
    end
    change_column_default :comments, :enable, from: false, to: true
  end
end
