class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    user = User.where(:provider=>auth['provider'], :uid=>auth['uid']).first || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url :notice => "Signed in!"
  end

  def failure
    redirect_to root_url, :alert => "Authentication failed. Please try again!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url :notice => "Signed out!"
  end

  def new
  end
end
