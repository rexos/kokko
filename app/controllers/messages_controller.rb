class MessagesController < ApplicationController

	def new
	end

        def show
          @messages = Message.where(:to =>current_user.id).order("created_at DESC")
        end

	def create
          @reciever = User.find_by_username(params[:message][:reciever].downcase)
          respond_to do |format|
            if @reciever
              @message = Message.new(:from => current_user.id, :to => @reciever.id, :body => params[:message][:body])
              if @message.save
                format.js { render action: :sent }
              else
                format.js { render :action => :sending_error }
              end
            else
              format.js { render :action => :sending_error }
            end
          end
        end

        def destroy
          @message = Message.find(params[:message_id])
          @message.destroy
          @destroyed_message_id = params[:message_id]
          respond_to do |format|
            format.js { render :action => :destroyed }
          end
        end

        def set_read
          @message = Message.find(params[:message_id])
          @message.update_attributes(:read => true);
          @message_id = @message.id
          respond_to do |format|
            format.js { render :action => :read }
          end
        end

        def get_new_messages
          if current_user
            @new_messages = current_user.messages.where( :read => false ).count
            if current_user.my_training_id
              @event = Program.find( current_user.my_training_id ).events.where( "start > ? AND start < ?", DateTime.now + 1.hours, DateTime.now + 3.hours ).first
            end
            @flash = FlashMessage.where(:to => current_user.id, :read => false)
            @flash.each do |f|
              f.update_attributes(:read => true)
            end
            if request.xhr?
              respond_to do |format|
                format.js { render :action => :new_messages }
              end
            end
          else
            if request.xhr?
              respond_to do |format|
                format.js { render :nothing => true }
              end
            end
          end
        end

end
