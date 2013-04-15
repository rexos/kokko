module UsersHelper

  def search_users( pattern = "" )
    if !pattern.blank?
      User.find( :all, :conditions => ["username LIKE ?", "%#{pattern}%"] )
    else
      nil
    end
  end

  def visit_user (visited_user_id)
    if visited_user_id
      User.find(visited_user_id)
    end
  end

end
