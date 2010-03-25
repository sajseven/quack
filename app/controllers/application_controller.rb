class ApplicationController < ActionController::Base
  include SimplestAuth::Controller
  
  protect_from_forgery
  
  protected
  
  def auth
    if !logged_in?
      redirect_to login_url
    end
  end
end
