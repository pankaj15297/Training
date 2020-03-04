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
    @post = Post.new(post_params)
    if @post.save
      redirect_to admin_post_path(@post.id)
    else
      render 'new'
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :category_id)
  end
end
