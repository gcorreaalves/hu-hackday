class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def client
    Instagram.client(access_token: ENV['INSTAGRAM_ACCESS_TOKEN'])
  end

end
