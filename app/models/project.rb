class Project < ApplicationRecord
  belongs_to :client
  has_and_belongs_to_many :employees
  
  validates_presence_of :name, :date_begin, :date_end, :cost, :description, :client_id, 
  :qtd_entregaveis, :qtd_parcelas, :qtd_horas, :status_projeto, :fase_projeto,
  :tipo, :plataforma, message: "Erro: Preencha todos os campos obrigatórios"

  def self.search(search)
		if search
			where(["UPPER(name) LIKE UPPER(?)","%#{search}%"])
		else
			all
		end
	end

end
