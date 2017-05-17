class CreateKnowledges < ActiveRecord::Migration[5.0]
  def change
    create_table :knowledges do |t|
      t.string 		:name
      t.string 		:group
      t.timestamps
    end
  end
end
