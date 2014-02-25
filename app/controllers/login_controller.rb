class SessionsController < ApplicationController

  def create
    render :text => env["omniauth.auth"].to_yaml
  end
end
