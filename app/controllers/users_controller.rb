class UsersController < ApplicationController
  load_and_authorize_resource

  def index
    @users = User.all
  end
  
  def create
    @user = User.new(params[:new_user])
    if @user.save 
      session[:user_id] = @user.id
      SignupMailer.signup_mail(@user).deliver
      redirect_to root_url
    else
      redirect_to root_url
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

  def add_status
    @status = Status.where(:user_id => params[:user_id],:association_id => params[:association_id]).first
    unless @status
      @status = Status.new(:user_id => params[:user_id],:association_id => params[:association_id])
      @status.save
    end
    redirect_to controller: :lessons, action: :show, :lesson_id => Association.find(params[:association_id]).lesson_id
  end

end
