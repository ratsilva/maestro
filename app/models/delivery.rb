class Delivery < ApplicationRecord

	belongs_to :project

	validates_presence_of :versao, :entregavel, :project_id, :message => "Erro: Preencha todos os campos obrigatórios"
	
	def self.search(search)
		if search
			where(["project_id LIKE ?","%#{search}%"])
		else
			all
		end
	end

end
