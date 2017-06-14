class NotificationController < ApplicationController

	private
    def notification_params
      params.require(:notification).permit(:id_usuario_origem, :id_usuario_destino, :descricao,
      	:assunto, :is_lida, :is_critica)
    end

end
