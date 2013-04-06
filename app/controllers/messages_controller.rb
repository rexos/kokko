class MessagesController < ApplicationController
	
	def new
	end

	def create
		@name = params[:message][:reciever]
		@reciever = User.find_by_username(@name.downcase)
		if !@reciver.nil?
			@message = Message.new(:from => current_user.id, :to => @reciver.id, :body => params[:message][:body])
			if @message.save
				redirect_to controller: :users, action: :home_utente
			else
				redirect_to controller: :messages, action: :new
			end
		else
			redirect_to controller: :messages, action: :new
		end
	end

	def user_messages_show
		
	end
end
