class SessionsController < ApplicationController

  def new
  end

  def create
  	user = User.find_by_name(params[:name])
  	if user and user.authenticate(params[:password])
  		session[:user_id] = user.id
  		session[:user_role] = user.role_id
  		redirect_to users_url
  	else
  		redirect_to login_url, alert: "Wrong name or password"
  	end	
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to users_url
  end

end
