class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    # stores information about a specific user
    @user = User.find(params[:id])
  end
end
