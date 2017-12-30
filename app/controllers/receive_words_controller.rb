class ReceiveWordsController < ApplicationController
before_action :authenticate_user!
  def index
  end

  def show
    @word = Message.offset( rand(Message.count) ).first
  end
end
