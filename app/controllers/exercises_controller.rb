class ExercisesController < ApplicationController
	
  def new
  end
  
  def create
    @exercise = Exercise.new(params[:exercise])
    if @exercise.save
      redirect_to controller: :programs, action: :index
    else 
      redirect_to action: :new
    end
  end
  
  def edit
  end

  def remove_ex_from_lesson
    
  end

  def add_ex_to_lesson
    @association = Association.new(params[:association])
    if @association.save
      redirect_to controller: :lessons, action: :index, id: @association.lesson_id
    else
      redirect_to controller: :programs, action: :index
    end
  end
  
  def destroy
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

end
