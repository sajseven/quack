class SessionsController < ApplicationController
  def new
    if logged_in?
      redirect_to posts_url
    elsif request.post?
      if user = User.authenticate(params[:session][:email], params[:session][:password])
        self.current_user = user
        flash[:notice] = 'Hej! You logged in successfully.'
        redirect_to posts_url
      else
        flash.now[:error] =  "Couldn't locate a user with those credentials"
        render :action => :new
      end
    end
  end
  
  def destroy
    self.current_user = nil
    flash[:notice] = "You successfully logged out. Hej d&aring;!"
    redirect_to login_url
  end
end
