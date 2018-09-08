class PostsController < ApplicationController
  before_action :set_user
  before_action :set_post, only: [:show, :destroy]

  def show
  end

  def new
    @post = @user.posts.new
  end

  def create
    @post = @user.post.new(post_params)

    if @post.save
      redirect_to [@user, @post]
    else
      render :new
    end
  end

  def destroy
    @post.destroy
    redirect_to user_posts_path
  end

  private
    
    def set_user
      @user = User.find(params[:user_id])
    end
    
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:body)
    end

end
