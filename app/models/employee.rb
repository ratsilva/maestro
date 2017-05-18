class Employee < ApplicationRecord

	validates_presence_of :name, :email, :telefone, :cargo, :cpf, 
	:birthday, :message => "Erro: Preencha todos os campos obrigatórios"
	
	def self.search(search)
		if search
			where(["UPPER(name) LIKE UPPER(?) OR UPPER(email) LIKE UPPER(?)","%#{search}%", "%#{search}%"])
		else
			all
		end
	end

end
