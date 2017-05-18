class KnowledgesController < ApplicationController

  def index
    @knowledges = Knowledge.search(params[:search])
  end
  
  def show
    @knowledge = Knowledge.find(params[:id])
  end
  
  def new
    @knowledge = Knowledge.new
  end
  
  def edit
    @knowledge = Knowledge.find(params[:id])
  end
  
  def create
    @knowledge = Knowledge.new(knowledges_params)
    if @knowledge.save
      redirect_to @knowledge
    else
      if @knowledge.errors.any?
        @knowledge.errors.each do |field, msg|
          flash[:alert] = msg
        end
      end
      redirect_to "/knowledges/new"
    end

  end
  
  def update
    @knowledge = Knowledge.find(params[:id])
    @knowledge.update(knowledges_params)
    redirect_to @knowledge
  end
  
  def destroy
    @knowledge = Knowledge.find(params[:id])
    @knowledge.destroy
    redirect_to knowledges_path
  end
  
  private
    def knowledges_params
      params.require(:knowledge).permit(:name, :group)
    end

end
