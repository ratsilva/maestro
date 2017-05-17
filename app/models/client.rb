class Client < ApplicationRecord

	validates_presence_of :company_name, :contact_name, :zip_code, :adress, :number, 
	:district, :city, :state, :country, :phone_number, :email, :status, :message => "Erro: Preencha todos os campos obrigatórios"
	
	has_many :projects
	
	def self.search(search)
		if search
			where(["UPPER(company_name) LIKE UPPER(?) OR UPPER(email) LIKE UPPER(?)","%#{search}%", "%#{search}%"])
		else
			all
		end
	end

end
