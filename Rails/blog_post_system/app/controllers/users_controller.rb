class UsersController < ApplicationController
  def index
    @users = User.all
  end

 def new
   @user = User.new()
 end
 
  def edit
    if User.all.ids.include? params[:id].to_i
      @user = User.find(params[:id])
    else
      render html: helpers.tag.strong("Id '#{params[:id]}' Not Found")
    end
  end

  def show
    if User.all.ids.include? params[:id].to_i
      @user = User.find(params[:id])
    else
      render html: helpers.tag.strong("Id '#{params[:id]}' Not Found")
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
  	@user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :contact, :paid, :address)
  end
end
