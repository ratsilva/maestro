class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string 		:company_name
      t.string 		:contact_name
      t.decimal 	:zip_code
      t.string		:adress
      t.decimal		:number
      t.string		:district
      t.string		:complement
      t.string		:city
      t.string		:state
      t.string		:country
      t.decimal		:phone_number
      t.decimal		:cell_phone
      t.string		:email
      t.string		:cpf
      t.string		:cnpj
      t.boolean		:is_pf
      t.boolean		:is_pj

      t.timestamps
    end
  end
end
