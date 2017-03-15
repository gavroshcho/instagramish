class PostsController < ApplicationController
  before_action :authenticate!

  def index
    @posts = Post.order(created_at: :desc)
  end

  def new
  end

  def create
    @post = current_user.posts.create(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit({avatars: []})
  end
end
