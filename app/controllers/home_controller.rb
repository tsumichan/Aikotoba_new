class HomeController < ApplicationController
before_action :authenticate_user!, only: :show

  def index
  end

  def show
  end

  def about
  end

  def check
  end

end
