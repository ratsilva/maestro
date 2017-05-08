class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.date :date_begin
      t.date :date_end
      t.decimal :cost
      t.text :description

      t.timestamps
    end
  end
end
