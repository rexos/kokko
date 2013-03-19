class ProgramsController < ApplicationController
  load_and_authorize_resource

  def new
  end

  def index
    @programs = Program.all
  end
  
  def create
    @program = Program.new(params[:new_program])
    if @program.save
      respond_to do |format|
        format.html {redirect_to action: :index}
        format.js
      end
    else
      render action: :new
    end
  end

  def destroy
    @program = Program.find(params[:prog_id])
    @program.destroy
    respond_to do |format|
      format.html {redirect_to action: :index}
      format.js {render :nothing => true}
    end
  end

  def start
    @program = Program.find(params[:prog_id])
    redirect_to controller: :lessons,action: :show, :lesson_id => @program.lessons.first.id
  end

  #dont touch this holy pally method
  def resume
    @program = Program.find(params[:prog_id])
    @all_lessons = @program.lessons.all
    @user_statuses = current_user.statuses
    user_associations = Array.new
    
    @user_statuses.each do |s|
      user_associations.push(s.association_id)
    end
    
    @all_lessons.each do |l|
      
      lesson_associations = Array.new
      
      l.associations.each do |a|
        lesson_associations.push(a.id)
      end
      
      tot_exercises = l.associations.count
      ary_complete = user_associations & lesson_associations
      tot_complete = ary_complete.count
      if tot_exercises != tot_complete
        redirect_to :controller => :lessons, action: :show, :lesson_id => l.id and return
      end
    end
    redirect_to controller: :lessons,action: :show, :lesson_id => @program.lessons.first.id
  end

  def home_training
    redirect_to controller: :users, action: :show, :prog_id => params[:prog_id]    
  end

end
