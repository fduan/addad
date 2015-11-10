class FollowsController < ApplicationController
  before_action :authenticate_user!
  respond_to :js

  def create
    @user = User.find(params[:user_id])
    current_user.follow!(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    current_user.unfollow!(@user)
  end
end
