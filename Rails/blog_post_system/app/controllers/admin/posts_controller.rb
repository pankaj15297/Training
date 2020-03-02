class Admin::PostsController < ApplicationController
  protect_from_forgery except: [:create, :edit]
  layout "posts"
  def index
  end

  def new
  end

  def edit
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
  def post_params
  end
end
