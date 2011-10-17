class SessionsController < ApplicationController
  def create
    raise request.env["omniauth.auth"].to_yaml
  end

  def failure
  end

  def destroy
  end

  def new
  end
end
