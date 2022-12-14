class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    post = current_user.posts.build(post_params)
    if post.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
