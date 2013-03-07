class ExercisesController < ApplicationController
	
	def new
		@@lesson = Lesson.find(params[:lesson_id])
	end

	def create
		@exercise = @@lesson.exercises.new(params[:exercise])
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
