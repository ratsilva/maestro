require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
  
  describe "Recebe uma requisição POST" do
    context "Não existe nenhum projeto ainda" do
      it "Cria um novo projeto" do
        @project = build(:project)
        @project.client = create(:client)
        @project.save
        #post :create, project:
        expect(Project.count).to eq(1)
      end
    end
  end
end
