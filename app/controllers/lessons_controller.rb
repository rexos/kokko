class LessonsController < ApplicationController

  def new
    @@program = Program.find(params[:id])
  end

  def create
    @lesson = @@program.lessons.new(params[:lesson])
    if @lesson.save
      redirect_to controller: :programs, action: :index
    else
      render action: :index
    end
  end

end
