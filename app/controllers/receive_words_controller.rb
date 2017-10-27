class ReceiveWordsController < ApplicationController
  def index
  end

  def show
    @message = Message.offset( rand(Message.count) ).first
  end
end
