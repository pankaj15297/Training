class ApplicationController < ActionController::API
  protect_from_forgery
  def routing_error
  	render file: "#{Rails.root}/public/404.html"
  end
end
