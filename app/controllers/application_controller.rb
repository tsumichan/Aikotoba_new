class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  add_flash_types :success, :info, :warning, :danger

  # priduction環境の時はbasic認証をかける
  # http_basic_authenticate_with name: ENV['BASIC_AUTH_USERNAME'], password: ENV['BASIC_AUTH_PASSWORD'] if Rails.env.production?

  def after_sign_in_path_for(resource)
    home_path
  end

  private

  def sign_in_required
    redirect_to new_user_session_url unless user_signed_in?
  end

  # rescue_from ActiveRecord::RecordNotFound, with: :render_404
  # rescue_from ActionController::RoutingError, with: :render_404
  # rescue_from Exception, with: :render_500

  # def render_404
  #   render template: 'errors/error_404', status: 404, layout: 'application', content_type: 'text/html'
  # end
  #
  # def render_500
  #   render template: 'errors/error_500', status: 500, layout: 'application', content_type: 'text/html'
  # end
end
