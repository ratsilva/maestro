class OrcamentosController < ApplicationController
  before_action :authenticate_user!
  def index
    @orcamentos = Orcamento.search(params[:search])
  end
  
  def show
    @orcamento = Orcamento.find(params[:id])
  end
  
  def new
    @orcamento = Orcamento.new
    @clients = Client.all
	@projects = Project.all
  end
  
  def edit
    @orcamento = Orcamento.find(params[:id])
    @clients = Client.all
	@projects = Project.all
  end
  
  def create
    @orcamento = Orcamento.new(orcamento_params)
    if @orcamento.save
      redirect_to @orcamento
    else
      if @orcamento.errors.any?
        @orcamento.errors.each do |field, msg|
          flash[:alert] = field
        end
      end
      redirect_to new_orcamento_path
    end
  end
  
  def update
    @orcamento = Orcamento.find(params[:id])
    @orcamento.update(orcamento_params)
    redirect_to @orcamento
  end
  
  def destroy
    @orcamento = Orcamento.find(params[:id])
    @orcamento.destroy
    redirect_to orcamentos_path
  end
  
  private
    def orcamento_params
      params.require(:orcamento).permit(:name, :client_id, :project_id, :valorAtual, :valorPlanejado, :created_at, :updated_at)
    end
end