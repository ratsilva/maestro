class ClientsController < ApplicationController

	def index
    @clients = Client.search(params[:search])
  end
  
  def show
    @client = Client.find(params[:id])
  end
  
  def new
    @client = Client.new
  end
  
  def edit
    @client = Client.find(params[:id])
  end
  
  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to @client
    else
      if @client.errors.any?
        @client.errors.each do |field, msg|
          flash[:alert] = msg
        end
      end
      redirect_to "/clients/new"
    end
  end
  
  def update
    @client = Client.find(params[:id])
    @client.update(client_params)
    redirect_to @client
  end
  
  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to clients_path
  end
  
  private
    def client_params
      params.require(:client).permit(:company_name, :contact_name, :zip_code, :adress, 
      	:number, :district, :complement, :city, :state, :country, :phone_number, :cell_phone, 
      	:email, :cpf, :cnpj, :is_pf, :is_pj, :status)
    end

end
