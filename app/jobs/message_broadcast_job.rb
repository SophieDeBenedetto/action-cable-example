class MessageBroadcastJob < ApplicationJob 
  queue_as :default 
  def perform(message) 
    ActionCable.server.broadcast 'messages_channel', message: render_message(message) 
  end 

  private 
    def render_message(message) 
      ApplicationController.renderer.render(partial: 'messages/message', locals: { message: message }) 
    end 
end
