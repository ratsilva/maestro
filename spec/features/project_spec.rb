require 'rails_helper'

RSpec.describe "Projeto", type: :feature do
  context "na homepage" do
    it "ver todos os projetos" do
      visit root_path
      click_link('Projeto')
      expect(current_path).to eq(projects_path)
    end
  end
  
  context "na pagina de projetos" do
    it "cria um novo projeto" do
      visit projects_path
      click_link('Novo Projeto')
      expect(current_path).to eq(new_project_path)
      
      #dados para o formulario (factory_girl)
      new_project = build(:project)
      
      #preenche o formulario
      fill_in('project_name', with: new_project.name)
      fill_in('project_description', with: new_project.description)
      fill_in('project_cost', with: new_project.cost)
      click_button('Create Project')
      
      #verifica se o projeto foi criado
      #e se foi redirecionado para a pagina do projeto
      project = Project.find_by(name: new_project.name)
      expect(project.name).to eq(new_project.name)
      expect(project.description).to eq(new_project.description)
      expect(project.cost).to eq(new_project.cost)
      expect(current_path).to eq(project_path(project))
      
    end
    it "mostra dados de um projeto" do
      project = create(:project)
      visit projects_path
      click_link('Ver')
      expect(current_path).to eq(project_path(project))
    end
    
    it "edita um projeto" do
      project = create(:project)
      visit project_path(project)
      click_link('Editar')
      expect(current_path).to eq(edit_project_path(project))
      name = 'maestro 2.0'
      fill_in('project_name', with: name)
      click_button('Update Project')
      project = Project.find(project.id)
      expect(project.name).to eq(name)
      expect(current_path).to eq(project_path(project))
      
    end
  end
end
