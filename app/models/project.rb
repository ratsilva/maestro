class Project < ApplicationRecord
  belongs_to :client
  
  validates_presence_of :name, :date_begin, :date_end, :cost, :description, :client_id, message: "Erro: Preencha todos os campos obrigatórios"
end
