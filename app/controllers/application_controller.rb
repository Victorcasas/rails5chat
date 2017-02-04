class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.

  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception

  before_action :authenticate_user!, :unless => :hvolt_page?

  def hvolt_page?
  	%w(/blog /contact /about).include?(request.path)
  end  

end
