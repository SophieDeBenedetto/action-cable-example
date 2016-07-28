class MessagesChannel < ApplicationCable::Channel  
  def subscribed
    stream_from "messages_#{params['chatroom_id']}_channel"
  end
end  
