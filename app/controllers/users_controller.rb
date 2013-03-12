class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.new(params[:new_user])
    if @user.save
      @user.authenticate(params[:session][:password])
      #SignupMailer.signup_mail(@user).deliver
      redirect_to :controller => :welcome, :action => :index
    else
      render 'new'
    end
  end

  def new
    @user = User.new
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
  end
  
  def edit
     @user = User.find(params[:id])
  end

  def list
    @programs = Program.all
  end
end
