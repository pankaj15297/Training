class Admin::PostsController < ApplicationController
  protect_from_forgery except: [:create, :edit]
end
