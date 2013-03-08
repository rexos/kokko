class LessonsController < ApplicationController

  def new
    @@program = Program.find(params[:prog_id])
  end

  def create
    @lesson = @@program.lessons.new(params[:lesson])
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
    @lesson = Lesson.find(params[:lesson_id])
  end
  
end
