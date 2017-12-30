class MessagesController < ApplicationController
  def index
  end

  def new
    @message = Message.new(message_params)
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to home_path
    else
      render :new
    end
  end

  def show
    @message = Message.offset( rand(Message.count) ).first
  end

  private

  def message_params
    {
      user_id:  current_user.id,
      contents: params[:contents]
    }
  end
end
