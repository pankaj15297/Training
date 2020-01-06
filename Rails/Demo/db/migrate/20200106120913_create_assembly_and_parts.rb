class CreateAssemblyAndParts < ActiveRecord::Migration[6.0]
  def change
    create_table :assembly_and_parts do |t|

      t.timestamps
    end
  end
end
