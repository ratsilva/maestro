module ApplicationHelper
  def active_class (controller)
    if controller == controller_name
      "active"
    else
      ""
    end
  end
end
