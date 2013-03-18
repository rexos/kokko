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

  def resume
  end

end
