class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:sessions][:email].downcase)
		if user && user = user.authenticate(params[:sessions][:password])
			session[:user_id] = user.id
			redirect_to welcome_path, :notice => "logged in"
		else
			flash.now.alert = "Wrong email or password "
			render 'new'
		end
	end

	def destroy	
	end
end
