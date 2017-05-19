class CreateEmployeesProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :employees_projects do |t|
    	t.references :employee, :project
    end
  end
end
