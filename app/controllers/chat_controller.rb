class ChatController < ApplicationController
  def index
  end

  def new
    @chat = Chat.all.order(id:"DESC")
  end
  
  def create
      @chat = Chat.new(prototype_params)
    if @chat.save
      redirect_to new_chat_path
    else
      render :new
    end
  end
end

private

def prototype_params
  params.permit(:messages)
end