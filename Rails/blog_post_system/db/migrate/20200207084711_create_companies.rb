class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :address, null: false

      t.timestamps
    end

    create_table :branches do |t|
      t.belongs_to :company
    end
  end
end
