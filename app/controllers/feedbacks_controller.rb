class FeedbacksController < ApplicationController
  def create
    @feedback = current_user.feedbacks.new(params[:feedback])
    if @feedback.save
      redirect_to controller: :users, action: :wall
    else
      flash[:notice] = "inserisci qualcosa"
      redirect_to controller: :users, action: :wall
    end

  end

  def destroy
    @feedback = Feedback.find(params[:feedback_id])
    @feedback_id = @feedback.id
    @feedback.destroy
    respond_to do |format|
      format.js { render action: :destroy }
    end
  end

end
