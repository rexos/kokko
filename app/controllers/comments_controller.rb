class CommentsController < ApplicationController

  def create
    @feedback = Feedback.find(params[:feedback_id])
    @comment = @feedback.comments.new(params[:comment])
    respond_to do |format|
      if @comment.save
        format.js { render :action => :commented }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:comment_id])
    @comment.destroy
    respond_to do |format|
      format.js { render :action => :destroyed }
    end
  end

end
