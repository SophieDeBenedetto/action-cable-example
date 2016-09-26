class MessagesChannel < ApplicationCable::Channel  
  def subscribed
    stream_from 'messages'
  end

  def receive(payload)
    Message.create(user: current_user, chatroom_id: 1, content: payload["message"])

  end
end  
