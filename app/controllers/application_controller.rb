class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :success, :info, :warning, :danger

  # priduction環境の時はbasic認証をかける
  http_basic_authenticate_with name: ENV['BASIC_AUTH_USERNAME'], password: ENV['BASIC_AUTH_PASSWORD'] if Rails.env.production?


  private

  def user_params
    {
      user_name: params[:user_name],
      password:  params[:password]
    }
  end
end
