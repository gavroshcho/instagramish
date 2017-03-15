class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(user_id: current_user.id, body: params[:comment][:body])
    if @comment.save
      redirect_to root_path
    else
      render "_new"
    end
  end
end
