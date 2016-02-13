class FollowManagementController < ApplicationController
  before_action :set_user

  def follow
    current_user.follow(@user)
    PostmanWorker.perform_async(generate_follow_json)
    redirect_to_profile
  end

  def stop_follow
    current_user.stop_following(@user)
    redirect_to_profile
  end

  def block
    current_user.block(@user)
    redirect_to_profile
  end

  def stop_block
    current_user.unblock(@user)
    redirect_to_profile
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def redirect_to_profile
    redirect_to profile_path(@user)
  end

  def generate_follow_json
    JSON.generate({ follower_id: current_user.id,
                    followed_id: @user.id })
  end
end
