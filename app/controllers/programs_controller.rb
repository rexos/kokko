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
    @program = Program.find(params[:prog_id])
    @all_lessons = @program.lessons.all
    @user_statuses = current_user.statuses
    @all_lessons.each do |l|
      tot_ex = l.exercises.count
      #va fixato. tot_complete deve essere il numero di status di quella lezione.
      tot_complete = l.associations.count
      if tot_ex != tot_complete
        redirect_to controller: :lessons,action: :show, :lesson_id => l.id
      end
    end
    redirect_to controller: :lessons,action: :show, :lesson_id => @program.lessons.first.id
  end
end
