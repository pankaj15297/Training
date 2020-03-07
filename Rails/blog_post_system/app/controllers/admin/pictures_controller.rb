class Admin::PicturesController < ApplicationController
  protect_from_forgery except: [:create :update]
  def index
    @pictures = Picture.all  	
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
