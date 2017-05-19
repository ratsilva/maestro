class ProjectsController < ApplicationController
  def index
    @projects = Project.search(params[:search])
  end
  
  def show
    @project = Project.find(params[:id])
  end
  
  def new
    @project = Project.new
    @clients = Client.all
  end
  
  def edit
    @project = Project.find(params[:id])
    @clients = Client.all
  end
  
  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project
    else
      if @project.errors.any?
        @project.errors.each do |field, msg|
          flash[:alert] = field
        end
      end
      redirect_to new_project_path
    end
  end
  
  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to @project
  end
  
  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end
  
  private
    def project_params
      params.require(:project).permit(:name, :date_begin, :date_end, :cost, :description, 
        :client_id, :qtd_entregaveis, :qtd_parcelas, :qtd_horas, :status_projeto, :fase_projeto,
        :tipo, :plataforma)
    end
end