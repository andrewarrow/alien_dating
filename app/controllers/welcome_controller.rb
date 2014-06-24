class WelcomeController < ApplicationController

  def index
    @planets = ['mercury', 'venus', 'mars', 'jupiter', 'saturn', 'uranus', 'neptune']
    @user = User.new
  end

  def create_account
    # raise params.inspect (*only used for development and not deployment*)
    # raise params.inspect
    @user = User.new(user_params)
    if @user.save
    	render :text => 'thanks for signing up!'
    else
    	render 'new'
    end


  end

  private
  	def user_params
			params.require(:user).permit(:name, :from_planet, :wants_planet)
		end
end
