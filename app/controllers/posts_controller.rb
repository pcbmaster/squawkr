class PostsController < ApplicationController
  before_action :set_post, only: [:show, :destroy]

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

    def before_action
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:body)
    end

end
