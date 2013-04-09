module UsersHelper

  def search_users( pattern )
    User.find( :all, :conditions =>[ 'username ~ ?', pattern ] )
  end

end
