class PostsController < ApplicationController
  before_action :set_user
  before_action :set_post, except [:creat, :new]
  def show
  end

  def create
  end

  def destroy
  end
end
