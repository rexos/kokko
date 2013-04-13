module UsersHelper

  def search_users( pattern )
    sql = 'SELECT DISTINCT * FROM users WHERE username LIKE ?'
    User.find_by_sql( [sql, "%"+pattern+"%"] )
  end

end
