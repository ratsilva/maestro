class CreateEmployeesKnowledges < ActiveRecord::Migration[5.0]
  def change
    create_table :employees_knowledges do |t|
    	t.references :employee, :knowledge
    end
  end
end
