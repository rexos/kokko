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
    @flash_msg = @lesson.flash_messages.all;
    @program = @lesson.program
    @status = current_user.statuses
  end

  def set_exercise_done
    @association = Association.find(params[:association_id])
    @exercise_id = @association.exercise_id
    @status = Status.where(:user_id => current_user.id,:association_id => @association.id).first
    unless @status
      @status = Status.new(:user_id => current_user.id,:association_id => @association.id)
      @status.save
    end
    respond_to do |format|
      format.js { render action: :set_ex_done }
    end
  end

  def new_flash_message
    @lesson = Lesson.find(params[:lesson_id])
    @body = params[:body]
    @flash_msg = current_user.flash_messages.new(:lesson_id => @lesson.id, :body => @body.to_s)
    respond_to do |f|
      if @flash_msg.save
        f.js { render :action => :insert_poke }
      end
    end
  end

end
