class Admin::UsersController < ApplicationController
  protect_from_forgery except: [:create, :edit]
  layout "users"
  def index
    if User.present?
      @users = User.all
    else
      render html: helpers.tag.strong("No Record Found")
    end
  end

 def new
   @user = User.new
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
      redirect_to admin_user_path(@user.id), notice: "User was successfully created."
      # format.html {redirect_to admin_user_path(@user.id), notice: 'User was successfully created.'}
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

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path
  end

  def soft_delete
    # binding.pry
    @user = User.find(params[:id])
    if @user.update(is_deleted: true)
      redirect_to admin_users_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :contact, :paid, :address)
  end
end
