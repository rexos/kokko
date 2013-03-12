class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def create
    @user = User.new(params[:new_user])
    if @user.save 
      session[:user_id] = @user.id
      SignupMailer.signup_mail(@user).deliver
      redirect_to :controller => :welcome, :action => :index
    else
      redirect_to action: :index
    end
  end
  
  def new
    @user = User.new
  end
  
  def destroy
    @user = current_user
    session[:user_id] = nil
    cookies.delete(:token)
    redirect_to root_url
  end

  def show
  end
  
  def edit
     @user = current_user
  end

  def list
    @programs = Program.all
  end
end
