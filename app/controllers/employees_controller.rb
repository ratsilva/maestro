class EmployeesController < ApplicationController

  def index
    @employees = Employee.search(params[:search])
  end
  
  def show
    @employee = Employee.find(params[:id])
  end
  
  def new
    @employee = Employee.new
  end
  
  def edit
    @employee = Employee.find(params[:id])
  end
  
  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to @employee
    else
      if @employee.errors.any?
        @employee.errors.each do |field, msg|
          flash[:alert] = msg
        end
      end
      redirect_to "/employees/new"
    end
  end
  
  def update
    @employee = Employee.find(params[:id])
    @employee.update(employee_params)
    redirect_to @employee
  end
  
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end
  
  private
    def employee_params
      params.require(:employee).permit(:name, :email, :telefone, :celular, 
      	:cargo, :cpf, :birthday)
    end

end
