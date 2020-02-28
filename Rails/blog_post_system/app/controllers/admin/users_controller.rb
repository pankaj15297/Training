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
    respond_to do |format|
      if @user.save
        format.html {redirect_to admin_user_path(@user.id), notice: 'User was successfully created.'}
      else
        render 'new'
      end
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
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :contact, :paid, :address)
  end
end
