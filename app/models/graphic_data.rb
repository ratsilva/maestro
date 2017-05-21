class GraphicData

  def employees
    employees = Employee.all.includes(:projects)
    data_employees = Hash.new(0)
    employees.each do |employee|
      data_employees[employee.projects.count] += 1
    end
    data_employees
  end

  def projects_client
    projects = Project.all.includes(:client)
    projects_client = projects.group(:client).count
    data_projects_client = []
    projects_client.each do |client, c|
      data_projects_client << [client.company_name, c]
    end
    data_projects_client
  end
  
  def project_status
    projects = Project.all.group(:status_projeto).count
  end
  
  def projects_timeline
    projects = Project.all
    timeline = []
    projects.each do |project|
      timeline = [project.name, project.date_begin, project.date_end]
    end
  end
  
end
