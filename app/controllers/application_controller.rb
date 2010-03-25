class ApplicationController < ActionController::Base
  include SimplestAuth::Controller
  
  protect_from_forgery
  
  protected
  
  def auth
    if !logged_in?
      flash[:notice] = "You must first log in."
      redirect_to login_url
    end
  end
end
