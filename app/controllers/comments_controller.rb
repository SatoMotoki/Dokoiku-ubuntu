class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comments_params)
    @comment.user_id = current_user.id
    @comment.event_id = params[:event_id]
    if @comment.save
      redirect_to event_path(id: params[:event_id]), success: 'コメントしました'
    else
      redirect_to event_path(id: params[:event_id])
    end
  end

  private
  def comments_params
    params.require(:comment).permit(:text)
  end
end
