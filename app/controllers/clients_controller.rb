class ClientsController < ApplicationController

	def index
    @clients = Client.all
  end
  
  def show
    @clients = Client.find(params[:id])
  end
  
  def new
    @clients = Client.new
  end
  
  def edit
    @clients = Client.find(params[:id])
  end
  
  def create
    @clients = Client.new(client_params)
    @clients.save
    redirect_to @clients
  end
  
  def update
    @clients = Client.find(params[:id])
    @clients.update(client_params)
    redirect_to @clients
  end
  
  def destroy
    @clients.destroy
    redirect_to clients_path
  end
  
  private
    def client_params
      params.require(:client).permit(:company_name, :contact_name, :zip_code, :adress, 
      	:number, :district, :complement, :city, :state, :country, :phone_number, :cell_phone, 
      	:email, :cpf, :cnpj, :is_pf, :is_pj)
    end

end
