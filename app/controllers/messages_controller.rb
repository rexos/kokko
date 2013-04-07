class MessagesController < ApplicationController

	def new
	end

        def show
          @messages = Message.where(:to =>current_user.id).order("created_at DESC")
        end

	def create
          @name = params[:message][:reciever]
          @reciever = User.find_by_username(@name.downcase)
          if @reciever
            @message = Message.new(:from => current_user.id, :to => @reciever.id, :body => params[:message][:body])
            if @message.save
              redirect_to controller: :users, action: :home_utente
            else
              render action: :new
            end
          else
            render action: :new
          end
        end

        def destroy
          @message = Message.find(params[:message_id])
          @message.destroy
          redirect_to action: :show
        end

        def set_read
          @message = Message.find(params[:message_id])
          @message.update_attributes(:read => true);
          respond_to do |format|
            format.js { render :nothing => true }
          end
        end

end
