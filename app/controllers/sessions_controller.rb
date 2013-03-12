class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_username(params[:session][:username])
		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id
			redirect_to :controller => :welcome, :action => :index, :notice => "logged in"
		else
			flash.now.alert = "Wrong email or password "
			render 'new'
		end
	end

	def destroy	
		session[:user_id] = nil
    	redirect_to :controller => :welcome, :action => :index, :notice => "logged out"
	end
end
