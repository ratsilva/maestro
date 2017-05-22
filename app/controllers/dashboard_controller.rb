class DashboardController < ApplicationController
  def index
    graphics = GraphicData.new
    @data_projects_client = graphics.projects_client
    @data_employees = graphics.employees
    @data_project_status = graphics.project_status
    @data_projects_timeline = graphics.projects_timeline
    @data_clients_status = graphics.clients_status
  end
  
end
