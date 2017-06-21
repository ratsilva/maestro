class CreateOrcamentos < ActiveRecord::Migration[5.0]
  def change
    create_table :orcamentos do |t|
      t.string :name
      t.integer :valorAtual
      t.integer :valorPlanejado
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :client_id
      t.integer :project_id

      t.timestamps
    end
    add_index :orcamentos, :client_id
    add_index :orcamentos, :project_id
  end
end
