class LessonsController < ApplicationController
  load_and_authorize_resource

  def new
    @program = Program.find(params[:prog_id])
  end

  def create
    @program = Program.find(params[:idprog])
    @lesson = @program.lessons.new(params[:lesson])
    if @lesson.save
      redirect_to controller: :programs, action: :index
    else
      render action: :new
    end
  end

  def index
    @lesson = Lesson.find(params[:id])
    @exercises = @lesson.exercises
    @all_exercises = Exercise.all
  end

  def destroy
    @lesson = Lesson.find(params[:lesson_id])
    @lesson.destroy
    redirect_to controller: :programs, action: :index
  end

  def show_lesson
    store_current_path
    @group = params[:group]
    @lesson = Lesson.find(params[:lesson_id])
    @program = @lesson.program
    @status = current_user.statuses
    @users = User.where(:my_training_id => @program.id, :online => true)
  end

  def set_exercise_done
    @association = Association.find(params[:association_id])
    @exercise_id = @association.exercise_id
    @status = Status.where(:user_id => current_user.id,:association_id => @association.id).first
    unless @status
      @status = Status.new(:user_id => current_user.id,:association_id => @association.id)
      @status.save
      exercise = Exercise.find( @exercise_id )
      User.find( :all, :conditions => [ "my_training_id = ? AND online = ? AND id != ?", current_user.my_training_id,  true, current_user.id ] ).each do |user|
                   FlashMessage.new( :from => current_user.id, :to => user.id, :body => "Ho finito l'esercizio #{exercise.name}" ).save
      end
    end
    respond_to do |format|
      format.js { render action: :set_ex_done }
    end
  end

  def new_flash_message
    @body = params[:body]
    @flash_msg = FlashMessage.new(:body => @body.to_s,:from => current_user.id, :to => params[:to_id])
    respond_to do |f|
      if @flash_msg.save
        f.js { render :action => :sera_bratole }
      end
    end
  end

end
