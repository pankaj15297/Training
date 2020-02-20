class CreateJoinTableEmployeePicture < ActiveRecord::Migration[6.0]
  def change
    create_join_table :employees, :pictures, table_name: :employee_pictures do |t|
      t.index [:employee_id, :picture_id]
      t.index [:picture_id, :employee_id]
    end
  end
end
