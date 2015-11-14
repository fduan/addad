class LikesController < ApplicationController
  before_action :find_likeable
  before_action :authenticate_user!
  respond_to :js

  def create
    current_user.like!(@likeable)
    @likeable.create_activity(:like, owner: current_user)
  end

  def destroy
    current_user.unlike!(@likeable)
    activity = PublicActivity::Activity.find_by_trackable_id_and_key(@likeable.id, "#{@likeable_type.downcase}.like")
    activity.destroy if activity.present?
  end

  private

  def find_likeable
    @likeable_type = params[:likeable_type].classify
    @likeable = @likeable_type.constantize.find(params[:likeable_id])
  end

end
