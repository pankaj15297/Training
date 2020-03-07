class Admin::PicturesController < ApplicationController
  protect_from_forgery except: [:create, :update]
  layout "pictures"
  include PicturesHelper

  def index
    @pictures = Picture.order("#{params[:sort]} #{params[:direction]}")
    # if params[:sort] == 'DESC'
    #   @pictures = Picture.order(name: :desc)
    # else
    #   @pictures = Picture.order(:name)
    # end
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
