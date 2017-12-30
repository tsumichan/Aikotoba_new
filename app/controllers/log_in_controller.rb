class LogInController < ApplicationController
  def index
  end

  def new
    @log_in = User.new(log_in_params)
  end

  def create
    @user = User.find_by(user_name: params[:user_name])

    if @user.nil?
      redirect_to users_new_path, warning: '新規登録をしてください'
    elsif @user.user_name == params[:user_name] && @user.password == params[:password]
      redirect_to root_path, success: 'ようこそ！'
    else
      flash.now[:danger] = 'ユーザー名かパスワードが間違っています'
      render :new
    end
  end

  private

  def log_in_params
    {
      user_name: params[:user_name],
      password:  params[:password]
    }
  end
end
