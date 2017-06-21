class Orcamento < ApplicationRecord
  belongs_to :client
  belongs_to :project
  
  validates_presence_of :name, :valorAtual, message: "Erro: Preencha todos os campos obrigatórios"
  validates_uniqueness_of :name
    
  def self.search(search)
		if search
			where(["UPPER(name) LIKE UPPER(?)","%#{search}%"])
		else
			all
		end
	end

end