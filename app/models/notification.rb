class Notification < ApplicationRecord

	validates_presence_of :id_usuario_origem, :id_usuario_destino, :descricao, :assunto, 
	:is_lida, :is_critica => "Erro: Preencha todos os campos obrigatórios"

end
