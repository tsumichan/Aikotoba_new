class ReceiveWordsController < ApplicationController

  def index
  end

  def show
    @word = Message.offset( rand(Message.count) ).first
  end
end
