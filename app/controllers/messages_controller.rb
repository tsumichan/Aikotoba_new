class MessagesController < ApplicationController
  def index
  end

  def new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      render template: "messages/sending"
    else
      render :new
    end
  end

  def receiving
    render template: "messages/receiving"
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
