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
  
  def destroy
  end
end
