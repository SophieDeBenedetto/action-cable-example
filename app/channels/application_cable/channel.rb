# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
module ApplicationCable
  class Channel < ActionCable::Channel::Base
    # def current_user
    #   @current_user = find_verified_user
    # end
 
    # protected
    #   def find_verified_user
    #     if current_user = User.find_by(id: cookies.signed[:user_id])
    #       current_user
    #     else
    #       reject_unauthorized_connection
    #     end
    #   end
  end
end
