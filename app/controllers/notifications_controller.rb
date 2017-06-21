class NotificationsController < ApplicationController

	def show
    	@notification = Notification.find(params[:id])
    	@notification.is_lida = true
    	@notification.update(notification_params)
    	redirect_to @notification
  	end

	private
    def notification_params
      params.require(:notification).permit(:id_usuario_origem, :id_usuario_destino, :descricao,
      	:assunto, :is_lida, :is_critica, :destino)
    end

end
