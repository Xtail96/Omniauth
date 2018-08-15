class SessionsController < ApplicationController
  def create
    tenant = Tenant.from_omniauth(request.env["omniauth.auth"])
    session[:user_id] = tenant.id
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end