class ChangeDataTypeClientFields < ActiveRecord::Migration[5.0]
  def change
  	change_column(:clients, :zip_code, :string)
  	change_column(:clients, :number, :integer)
  	change_column(:clients, :phone_number, :string)
  	change_column(:clients, :cell_phone, :string)
  	remove_column(:clients, :cpf)
	remove_column(:clients, :cnpj)
	remove_column(:clients, :is_pf)
	remove_column(:clients, :is_pj)
  end
end
