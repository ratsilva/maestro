class Knowledge < ApplicationRecord
	
	has_and_belongs_to_many :projects
	validates_presence_of :name, :group, :message => "Erro: Preencha todos os campos obrigatórios"
	
	def self.search(search)
		if search
			where(["UPPER(name) LIKE UPPER(?)","%#{search}%"])
		else
			all
		end
	end

end
