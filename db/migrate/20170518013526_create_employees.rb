class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string 		:name
      t.string 		:email
      t.string 		:telefone
      t.string 		:celular
      t.string 		:cargo
      t.string 		:cpf
      t.date 		:birthday
      
      t.timestamps
    end
  end
end
