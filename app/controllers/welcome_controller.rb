class WelcomeController < ApplicationController

  def index
  	@planets = ['mercury', 'venus', 'mars', 'jupiter', 'saturn', 'uranus', 'neptune']
  	@user = User.new
  end
end
