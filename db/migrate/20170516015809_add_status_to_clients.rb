class AddStatusToClients < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :status, :string
  end
end
