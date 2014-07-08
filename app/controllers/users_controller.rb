class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    # stores information about a specific user
    @user = User.find(params[:id])
    @is_logged_in_user = current_user && current_user.id == @user.id
  end

  def edit
    @user = User.find(params[:id])
  end

end
