class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.new(params[:new_user])
    if @user.save
      redirect_to action: :list
      SignupMailer.signup_mail(@user).deliver
    else
      redirect_to cotntroller: :programs, action: :index
    end
  end

  def new
  end

  def destroy
    @user = User.find(params[:user_id])
    if @user.destroy
      redirect_to :controller => :users, :action => :index
    else
      redirect_to root_url
    end
  end

  def show
    @user = User.find(params[:id])
  end
  
  def list
    @programs = Program.all
  end
end
