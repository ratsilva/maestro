class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      
      t.integer 	:id_usuario_origem
      t.integer 	:id_usuario_destino
      t.string		:descricao
      t.string		:assunto
      t.boolean		:is_lida
      t.boolean		:is_critica

      t.timestamps
    end
  end
end
