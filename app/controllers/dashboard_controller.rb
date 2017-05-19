class DashboardController < ApplicationController
  def index
    @projects = Project.all.includes(:client)
    @projects_client = @projects.group(:client).count
    @data_projects_client = []
    @projects_client.each do |client, c|
      @data_projects_client << [client.company_name, c]
    end
    
  end
end
