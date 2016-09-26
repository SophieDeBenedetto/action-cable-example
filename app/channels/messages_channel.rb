class MessagesChannel < ApplicationCable::Channel  
  def subscribed
    stream_from 'messages'
  end

  def transmit(payload)
    binding.pry
    ActionCable.server.broadcast('messages', {message: payload["message"]})

    # Message.create(user: current_user, chatroom_id: 1, content: payload["message"])
    # create message
    # broadcast message
  end
end  
