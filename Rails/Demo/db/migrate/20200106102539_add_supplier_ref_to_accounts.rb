class AddSupplierRefToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_reference :accounts, :supplier, null: false, foreign_key: true
  end
end
