class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.

  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception

  before_action :authenticate_user!, :if => :nohvoltage?

  def nohvoltage?
  	if (request.path != "/blog")
  	  return true
  	else
  	  return false
    end
  end
  

end
