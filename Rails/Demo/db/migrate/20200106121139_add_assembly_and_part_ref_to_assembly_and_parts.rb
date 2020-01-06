class AddAssemblyAndPartRefToAssemblyAndParts < ActiveRecord::Migration[6.0]
  def change
    add_reference :assembly_and_parts, :assembly, null: false, foreign_key: true
    add_reference :assembly_and_parts, :part, null: false, foreign_key: true
  end
end
