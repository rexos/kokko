class WelcomeController < ApplicationController
  def index
    if current_user
    	case current_user.role
        when "admin"
        redirect_to :controller => :programs, action: :index
        when "user"
        redirect_to :controller => :users, :action => :show
      end
    end
  end
end
