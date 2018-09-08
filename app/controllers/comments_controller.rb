class CommentsController < ApplicationController
  
  before_action :set_comment, only, [:show, :destroy] 
  
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to posts_show_path
    else
      render :new
    end
  end

  def destroy
    @comment.destroy
    redirect_to posts_show_path
  end
end

private

def set_comment
  @comment = Comment.find(params[:id])
end

def comment_params
  params.require(:comment).permit(:body)
end