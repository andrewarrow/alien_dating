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

  def update
    @user = User.find(current_user.id)
    if @user.update_attributes(user_params)
      redirect_to user_path(@user)
    else
      flash[:error] = 'Sorry, there was an error.'
      redirect_to edit_user_path(@user)
    end
  end

  def meetup_request
    @user = User.find(current_user.id)
    @meetup_request = current_user.user_id.build(params[:id])
    if @meetup_request.save
      flash[:success] = 'Request Submitted'
      redirect_to user_path(@user)
    else
      flash[:error] = 'Unable to send request'
      redirect_to user_path(@user)
    end
  end

  private

  def user_params
    params.require(:user).permit(:about_me, :what_i_want)
  end

end
