class UsersController < ApplicationController
  def index
    if User.any?
      @users = User.all
    else
      render html: helpers.tag.strong("No Record Found")
    end
  end

 def new
   @user = User.new()
 end
 
  def edit
    begin
      @user = User.find(params[:id])
    rescue => e
      render html: helpers.tag.strong("#{e.message}")
    end
  end

  def show
    begin
      @user = User.find(params[:id])
    rescue => e
      render html: helpers.tag.strong("#{e.message}")
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
    params.require(:user).permit(:name, :email, :contact, :paid, :address)
  end
end
