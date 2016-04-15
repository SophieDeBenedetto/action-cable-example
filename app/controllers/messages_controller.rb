class MessagesController < ApplicationController

  def create
    message = Message.new(message_params)
    message.user = current_user
    message.chatroom = Chatroom.find(message_params[:chatroom_id])
    if message.save
      ActionCable.server.broadcast 'messages',
        message: message.content,
        user: message.user.username
      head :ok
    end
  end

  private

    def message_params
      params.require(:message).permit(:content, :chatroom_id)
    end
end
