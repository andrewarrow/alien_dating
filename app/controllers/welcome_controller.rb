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
      session[:user] = @user.id
      # we use this to show dynamic users
    	redirect_to user_path(@user)
    else
    	render 'new'
    end
  end

  def logout
    # *only used for development and not deployment*
    # raise session.inspect
    session[:user] = nil
    redirect_to root_path
  end

  private

  	def user_params
			params.require(:user).permit(:name, :from_planet, :wants_planet)
		end

end
