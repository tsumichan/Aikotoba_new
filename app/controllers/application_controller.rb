class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  http_basic_authenticate_with name: ENV['BASIC_AUTH_USERNAME'], password: ENV['BASIC_AUTH_PASSWORD'] if Rails.env.production?

  def after_sign_in_path_for(resource)
    home_path
  end

  private

  def sign_in_required
    redirect_to new_user_session_url unless user_signed_in?
  end

end
