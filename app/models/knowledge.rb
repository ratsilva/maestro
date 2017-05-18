class Knowledge < ApplicationRecord

	validates_presence_of :name, :group, :message => "Erro: Preencha todos os campos obrigatórios"
	
	def self.search(search)
		if search
			where(["UPPER(name) LIKE UPPER(?)","%#{search}%"])
		else
			all
		end
	end

end
