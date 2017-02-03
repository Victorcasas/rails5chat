class PagesController < ApplicationController
  includes HighVoltage::StaticPage 
  skip_before_action :authenticate_user!

end