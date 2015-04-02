class HomeController < ApplicationController
  layout "application"
  def index
    @home = "You have lovely eyes."
  end
end