class SessionsController < ApplicationController

  def new
  end
  
  def create
    user = User.find_by_username(params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      if params[:session][:remember_me].to_i==1
        cookies.permanent[:token] = user.token
      end
      case user.role
      when "admin" 
        redirect_to :controller => :programs, action: :index
      when "user"
        if current_user.my_training_id
            redirect_to :controller => :programs, action: :show, :prog_id => current_user.my_training_id  
        else
            redirect_to :controller => :users, :action => :home_utente
        end
      end  
    else
      flash[:error] = "Invalid Username or Password"
      redirect_to root_url
    end
  end
  
  def destroy
    session[:user_id] = nil
    cookies.delete(:token)
    redirect_to :controller => :welcome, :action => :index
  end
end
