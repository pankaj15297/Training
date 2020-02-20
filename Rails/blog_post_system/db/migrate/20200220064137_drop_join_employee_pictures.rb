class DropJoinEmployeePictures < ActiveRecord::Migration[6.0]
  def change
  	drop_table :employee_pictures
  	drop_table :employees
  end
end
