class Notification < ApplicationRecord

	validates_presence_of :id_usuario_origem, :id_usuario_destino, :descricao, :assunto, 
	:is_lida, :is_critica, :destino => "Erro: Preencha todos os campos obrigatórios"

	def self.search_nao_lidas(id_user)
		where(["id_usuario_destino = ? AND is_lida = false","#{id_user}"])
	end

end
