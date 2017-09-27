class SendWordsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def message_params
    {
      # user_id:  params[:user_id],
      contents: params[:contents]
    }
  end
end
