class ChatroomsController < ApplicationController

  def index
    @chatrooms = Chatroom.all
  end

  def new
    @chatroom = Chatroom.new
  end

  def edit
    @chatroom = Chatroom.find_by(slug: params[:slug])
  end

  def create
    chatroom = Chatroom.new(chatroom_params)
    if chatroom.save
      redirect_to chatroom
    else
      render :new
    end
  end

  def update
    chatroom = Chatroom.find_by(slug: params[:slug])
    chatroom.update(chatroom_params)
    redirect_to chatroom
  end

  def show
    @chatroom = Chatroom.find_by(slug: params[:slug])
    @message = Message.new
  end

  private

    def chatroom_params
      params.require(:chatroom).permit(:topic)
    end
end
