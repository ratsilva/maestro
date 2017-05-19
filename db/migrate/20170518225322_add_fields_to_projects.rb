class AddFieldsToProjects < ActiveRecord::Migration[5.0]
  def change

    add_column :projects, :qtd_entregaveis, :integer
    add_column :projects, :qtd_parcelas, :integer
    add_column :projects, :qtd_horas, :integer
    add_column :projects, :status_projeto, :text
    add_column :projects, :fase_projeto, :text
    add_column :projects, :tipo, :text
    add_column :projects, :plataforma, :text

  end
end
