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

  def show
    store_current_path
    @lesson = Lesson.find(params[:lesson_id])
    @program = @lesson.program
    @status = current_user.statuses
  end

  def destroy
    @lesson = Lesson.find(params[:lesson_id])
    @lesson.destroy
    redirect_to controller: :programs, action: :index
  end
  
end
