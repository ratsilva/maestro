class AddDestinoToNotifications < ActiveRecord::Migration[5.0]
  def change
  	add_column :notifications, :destino, :string
  end
end
