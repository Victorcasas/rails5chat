class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.

  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception

  before_action :authorize_special

  def authorize_special
    unless request.path == "/blog"
      :authenticate_user!
    end
end

end
