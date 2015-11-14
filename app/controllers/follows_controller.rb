class FollowsController < ApplicationController
  before_action :authenticate_user!
  respond_to :js

  def create
    @user = User.find(params[:user_id])
    current_user.follow!(@user)
    @user.create_activity(:follow, owner: current_user, recipient: @user)
  end

  def destroy
    @user = User.find(params[:user_id])
    current_user.unfollow!(@user)
    activity = PublicActivity::Activity.find_by_trackable_id_and_key(@user.id, "User.follow")
    activity.destroy if activity.present?
  end
end
