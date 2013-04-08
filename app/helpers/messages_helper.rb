module MessagesHelper

  def current_user_message_count
    @message_count = Message.where(:to => current_user.id, :read => false).count
  end


end
