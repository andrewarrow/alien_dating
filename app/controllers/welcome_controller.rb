class WelcomeController < ApplicationController

  def index
    @planets = ['mercury', 'venus', 'mars', 'jupiter', 'saturn', 'uranus', 'neptune']
    @user = User.new
  end

  def create_account
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end

  def login
    @users = User.all.map { |u| u.name }
  end

  def login_user
    user = User.find_by_name(params[:user_id])
    if user
      session[:user_id] = user.id
      redirect_to user_path(user)
      return
    end

    flash[:error] = 'Sorry that user not in the system.'
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :from_planet, :wants_planet)
  end

end
