class DeliveriesController < ApplicationController

  def index
    @deliveries = Delivery.search(params[:search])
  end
  
  def show
    @delivery = Delivery.find(params[:id])
  end
  
  def new
    @delivery = Delivery.new
    @projects = Project.all
  end
  
  def edit
    @delivery = Delivery.find(params[:id])
    @projects = Project.all
  end
  
  def create
    @delivery = Delivery.new(delivery_params)
    if @delivery.save
      redirect_to @delivery
    else
      if @delivery.errors.any?
        @delivery.errors.each do |field, msg|
          flash[:alert] = msg
        end
      end
      redirect_to "/deliveries/new"
    end
  end
  
  def update
    @delivery = Delivery.find(params[:id])
    @delivery.update(delivery_params)
    redirect_to @delivery
  end
  
  def destroy
    @delivery = Delivery.find(params[:id])
    @delivery.destroy
    redirect_to deliveries_path
  end
  
  private
    def delivery_params
      params.require(:delivery).permit(:software, :versao, :entregavel, :anexo, :project_id)
    end

end
