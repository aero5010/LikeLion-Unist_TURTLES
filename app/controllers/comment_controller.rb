class CommentController < ApplicationController
  def create
    @comment = Comment.new
    @comment.post_id = params[:id]
    @comment.user_id = current_user.id
    @comment.comment = params[:content]
    @comment.save
    redirect_to '/post/list'
  end

  def delete
    @comment_d = Comment.find(params[:id])
    @comment_d.destroy
    redirect_to '/post/list'
  end
end
