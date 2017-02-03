class PagesController < ApplicationController
  include HighVoltage::StaticPage 
  before_action :authenticate_user!, except: [:new, :create, :show, :index]
end