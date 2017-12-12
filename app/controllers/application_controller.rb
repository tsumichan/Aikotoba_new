class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # priduction環境の時はbasic認証をかける
  http_basic_authenticate_with name: ENV['BASIC_AUTH_USERNAME'], password: ENV['BASIC_AUTH_PASSWORD'] if Rails.env.production?
end
