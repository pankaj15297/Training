class Admin::PostsController < ApplicationController
  protect_from_forgery except: [:create, :edit]
  layout "posts"
  def index
  	if Post.present?
  	  @posts = Post.all
  	else
      render html: helpers.tag.strong("No Record Found")
    end
  end

  def new
    @post = Post.new()
  end

  def edit
    begin
      @post = Post.find(params[:id])
    rescue => e
      render html: helpers.tag.strong("#{e.message}")
    end
  end

  def show
    begin
      @post = Post.find(params[:id])
    rescue => e
      render html: helpers.tag.strong("#{e.message}")
    end
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
