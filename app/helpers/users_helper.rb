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

  def gravatar_for(user, css)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.username, :class => css)
  end

end
