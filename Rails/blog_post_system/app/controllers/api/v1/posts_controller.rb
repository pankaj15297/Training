class Api::V1::PostsController < ApplicationController
  protect_from_forgery except: [:create, :edit]
  layout "posts"
  def index
    @page = params.fetch(:page, 0).to_i
    if params[:element]
      @posts = Post.where("lower(title) LIKE lower(?) or lower(content) LIKE lower(?)", "#{params[:element]}%", "#{params[:element]}%").order(:created_at).limit(4).offset(@page*4)
      if !@posts.present?
        flash[:notice] = "No records Fount"
      else
        flash[:notice] = ""
      end
    elsif(params[:format] == 'ASC')
      @posts = Post.order(:title).limit(4).offset(@page*4)
    else
      @posts = Post.order(:created_at).limit(4).offset(@page*4)  
    end
    @records = Post.count
  end

  def new
    @post = Post.new
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
      redirect_to admin_post_path(@post.id)
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to admin_posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :user_id, :category_id)
  end
end
