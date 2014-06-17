class WelcomeController < ApplicationController

  def index
  	@planets = ['mercury', 'venus', 'mars', 'jupiter', 'saturn', 'uranus', 'neptune']
  end
  
end
