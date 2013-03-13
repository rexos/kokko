class WelcomeController < ApplicationController
  def index
    admin = User.new(:username => "deadormi", :password => "diomerda", :password_confirmation => "diomerda", :email => "dea.dormi@gmail.com", :role => "admin")
    admin.save
    current_user
  end
end
