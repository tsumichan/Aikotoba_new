class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new(user_params)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to home_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def delete
  end


end
