class CreateOrcamentos < ActiveRecord::Migration[5.0]
  def change
    create_table :orcamentos do |t|
      t.serial :id
      t.string :description
      t.string :text
      t.references :employess_projects, foreign_key: true
      t.references :clients, foreign_key: true

      t.timestamps
    end
  end
end
