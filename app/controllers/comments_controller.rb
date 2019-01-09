class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comments_params)
    @comment.user_id = current_user.id
    @comment.event_id = params[:event_id]
    if @comment.save
      redirect_to "/events/#{params[:event_id]}"
    else
      redirect_to "/events/#{params[:event_id]}"
    end
  end

  private
  def comments_params
    params.require(:comment).permit(:text)
  end
end
