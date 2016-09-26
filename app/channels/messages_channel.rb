class MessagesChannel < ApplicationCable::Channel  
  def subscribed
    stream_from 'messages'
  end

  def speak(payload)
    ActionCable.server.broadcast 'messages',
        message: payload["message"]
  end
end  
