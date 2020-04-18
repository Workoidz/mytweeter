class SessionsController < ApplicationController
  def new
  end

  def create
  	

  	user = User.find_by(email: params[:email])
  	password = params[:password]

  

  	if user && user.authenticate(password)
  		session[:user_id] = user.id
  		
  	
    	redirect_to dashboard_path


  	else

  		redirect_to login_path, notice: "Invalid Login Details"

  	end


  end

  def destroy

  	reset_session
  	redirect_to login_path, notice: "You have been logged out ...!"

  end
end
