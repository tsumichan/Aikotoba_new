class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new(user_params)
  end

  def create
    @user = User.new(user_params)
    # binding.pry
    if @user.save
      redirect_to root_path
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

  private

  def user_params
    {
      user_name: params[:user_name],
      password:  params[:password]
    }
  end
end
