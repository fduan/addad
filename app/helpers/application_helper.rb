module ApplicationHelper
	
  def belongs_to_user?(resource)
    resource.user == current_user
  end

  def is_current_user?(user)
    user == current_user
  end
end
