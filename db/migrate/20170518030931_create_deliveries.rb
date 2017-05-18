class CreateDeliveries < ActiveRecord::Migration[5.0]
  def change
    create_table :deliveries do |t|
      t.string 		:software
      t.string 		:versao
      t.string 		:entregavel
      t.binary 		:anexo

      t.timestamps
    end

    add_reference :deliveries, :project, foreign_key: true

  end
end
