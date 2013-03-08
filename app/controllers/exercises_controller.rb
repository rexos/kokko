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

  def add_ex_to_lesson
    @association = Association.new(params)
    if @association.save
      respond_to do |format|
        format.html {redirect_to controller: :lessons, action: :index, id: @association.lesson_id }
        format.js {render :nothing => true}
      end
    end
  end
  
  def destroy
  end
end
