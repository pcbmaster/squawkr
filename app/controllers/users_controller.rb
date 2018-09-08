class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy]

  def index
    @posts = Post.all
    
  end

  def show
  end

  def edit

  end

  
end
