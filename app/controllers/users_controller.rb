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
    @ex = Exercise.find( @association.exercise_id )
    respond_to do |format|
      format.js { render action: :set_ex_done }
    end
    unless @status
      @status = Status.new(:user_id => params[:user_id],:association_id => @association.id)
      @status.save
    end
    #@current_lesson = Lesson.find(@association.lesson_id)
    #if get_progress_of_program(@current_lesson.program_id) != 100
     # redirect_to controller: :lessons, action: :show_lesson, :lesson_id => Association.find(params[:association_id]).lesson_id
    #else
     # redirect_to controller: :programs, action: :show, :done_id => @current_lesson.program_id
    #end
  end

  def home_utente
    @programs = Program.all
  end

  def wall
      @feedbacks = current_user.feedbacks.find(:all, :order => "created_at DESC")
      @program = Program.find(current_user.my_training_id)
  end

  def search
    @found_users = search_users(params[:research][:text])
    respond_to do |format|
      format.js { render :action =>:found_users }
    end
  end

  def visit
    if params[:visited_user_id].to_i == current_user.id
      redirect_to action: :wall
    else
      @visited_user = visit_user(params[:visited_user_id])
      @visited_user_feedbacks = @visited_user.feedbacks.find( :all, :order => "created_at DESC" )
    end
  end

  def friends
    @program = Program.find(current_user.my_training_id)
    @current_user_friends_ids = Relationship.where( :follower => current_user.id )
    @current_user_friends = Array.new
    @current_user_friends_ids.each do |rel|
      @current_user_friends.push User.find(rel.followed)
    end
  end

  def remove_friend
    @removed_id = params[:removed_friend_id]
    Relationship.where( :follower => current_user.id, :followed => @removed_id ).first.destroy
    respond_to do |format|
      format.js { render action: :friend_removed }
    end
  end

  def follow
    @relationship = Relationship.new(:follower => current_user.id, :followed => params[:followed])
    @followed = User.find(params[:followed]).username
    current_user.feedbacks.new( :body => "#{current_user.username.capitalize} ha aggiunto #{@followed.capitalize} tra gli amici!").save
    respond_to do |format|
      if @relationship.save
        format.js { render action: :followed }
      else
        format.js { render :nothing => true }
      end
    end
  end

  def calendar
    @current_program = Program.find( params[:current_program_id] )
    @program = Program.find(current_user.my_training_id)
    render :layout => true
  end

  def get_online_users
    respond_to do |format|
      format.js { render :action => :online_users }
    end
  end


end
