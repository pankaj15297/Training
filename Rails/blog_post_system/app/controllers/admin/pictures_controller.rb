class Admin::PicturesController < ApplicationController
  protect_from_forgery except: [:create, :update]
  layout "pictures"
  include PicturesHelper

  def index
    if params[:sort] == 'name' and params[:direction] == 'asc'
      @pictures = Picture.order(:name).paginate(page: params[:page], per_page: 15)
    elsif params[:sort] == 'name' and params[:direction] == 'desc'
      @pictures = Picture.order(name: :desc).paginate(page: params[:page], per_page: 15)
    elsif params[:sort] == 'imageable_type' and params[:direction] == 'asc'
      @pictures = Picture.order(:imageable_type).paginate(page: params[:page], per_page: 15)
    elsif params[:sort] == 'imageable_type' and params[:direction] == 'desc'
      @pictures = Picture.order(imageable_type: :desc).paginate(page: params[:page], per_page: 15)
    elsif params[:sort] == "imageable_id" and params[:direction] == 'asc'
      @pictures = Picture.order(:imageable_id).paginate(page: params[:page], per_page: 15)
    elsif params[:sort] == "imageable_id" and params[:direction] == 'desc'
      @pictures = Picture.order(imageable_id: :desc).paginate(page: params[:page], per_page: 15)
    else
      @pictures = Picture.paginate(page: params[:page], per_page: 15)
    end
    # @pictures = Picture.order("#{params[:sort]} #{params[:direction]}")
    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  def new
    @picture = Picture.new
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def create
  	
  end

  def update
  	
  end

  def destroy
  	
  end
end
