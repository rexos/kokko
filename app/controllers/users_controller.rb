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

  def show
    @user = User.find(params[:id])
  end
  
  def list
    @programs = Program.all
  end
end
