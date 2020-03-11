class Admin::Api::V1::UsersController < ApplicationController
  # protect_from_forgery except: [:create, :edit]
  # layout "users"
  def index
    # binding.pry
    @page = params.fetch(:page, 0).to_i
    @users = User.order(created_at: :desc).limit(4).offset(@page*4)
    @records = User.count
    render json: {status: 'Success', message: 'Loaded users', data: @users}, status: :ok
    # @users = User.paginate(:per_page => 2, :page => params[:page])
    # @users = User.all.order(:created_at)
    # @users = User.where(is_deleted: false)
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
    render json: {status: 'Success', message: 'Loaded user', data: @user}, status: :ok
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: {status: 'Success', message: 'Saved user', data: @user}, status: :ok
      # redirect_to admin_user_path(@user.id), notice: "User was successfully created."
      # format.html {redirect_to admin_user_path(@user.id), notice: 'User was successfully created.'}
    else
      # render 'new'
      render json: {status: 'Error', message: 'User not saved', data: @user.errors}, status: :unprocessable_entity
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      # redirect_to admin_user_path(@user.id)
      render json: {status: 'Success', message: 'Updated user', data: @user}, status: :ok
    else
      # render 'edit'
      render json: {status: 'Success', message: 'User not updated', data: @user.errors}, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    # redirect_to admin_users_path
    render json: {status: 'Success', message: 'Deleted user', data: @user}, status: :ok
  end

  def soft_delete
    user = User.find(params[:id])
    user.update(is_deleted: !user.is_deleted)
    @page = params.fetch(:page, 0).to_i
    @users = User.order(created_at: :desc).limit(4).offset(@page*4)
    @records = User.count
    # @users = User.all
  end

  private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :contact, :paid, :address)
  end
end
