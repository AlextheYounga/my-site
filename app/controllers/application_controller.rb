class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?, :admin_routes

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    #the ||= prevents the session from bombing the database with repetitive hits
  end


  # TODO: Figure out dynamic admin routing
  # def admin_routes
  #   unnecessary = [
  #     "rails",
  #     "ckeditor",
  #   ]

  #   @admin_routes = Rails.application.routes.named_routes.helper_names.each do |route|
  #     next if (unnecessary.each {|s| route.include?(s)}) 
  #     route
  #   end
  # end

  def logged_in?
    !!current_user
    # '!!' is the sign for boolean, meaning true or false
  end

  def require_user
    if !logged_in?
      flash[:danger] = "You must be logged in to perform that action"
      redirect_to root_path
    end
  end
end
