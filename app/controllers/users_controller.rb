class UsersController < ApplicationController
  load_and_authorize_resource

  def index
    @users = User.all
  end
  
  def create
    @user = User.new(params[:new_user])
    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        SignupMailer.signup_mail(@user).deliver
        Message.new(:from => "1", :body => "Ti diamo il benvenuto alla nostra social gym #{@user.username.capitalize}, speriamo che tu ti possa divertire con noi! Lo staff di Kokko SocialGym", :to => @user.id).save
        format.js { render :action => 'registered.js.erb' }
      else
        format.js { render :action => 'error_registered.js.erb'}
      end
    end
  end
  
  def new
    @user = User.new
  end
  
  def destroy
    @user = User.find(params[:user_id])
    @user.destroy
    redirect_to controller: :programs, action: :index
  end

  def edit
  end

  def update
    @user = current_user
    edited = params[:edited_user]
    psw = BCrypt::Password.create(edited[:new_password]).to_s
    if @user.update_attributes(:first_name => edited[:first_name] , :second_name => edited[:second_name], :where => edited[:where], :password_digest => psw)
      redirect_to controller: :users, action: :home_utente
    end
  end
 
  def add_status
    @association = Association.find(params[:association_id])
    @status = Status.where(:user_id => params[:user_id],:association_id => @association.id).first
    unless @status
      @status = Status.new(:user_id => params[:user_id],:association_id => @association.id)
      @status.save
    end
    @current_lesson = Lesson.find(@association.lesson_id)
    if get_progress_of_program(@current_lesson.program_id) != 100
      redirect_to controller: :lessons, action: :show, :lesson_id => Association.find(params[:association_id]).lesson_id
    else
      redirect_to controller: :programs, action: :show, :done_id => @current_lesson.program_id
    end
  end

  def home_utente
    @programs = Program.all
  end

  def wall
      @feedbacks = current_user.feedbacks.find(:all, :order => "created_at DESC")
  end

  def search
    @found_users = search_users(params[:research][:text])
  end

end
