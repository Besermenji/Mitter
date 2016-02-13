class PostmanWorker
  include Sidekiq::Worker

  def perform(info)
    info = JSON.load(info)
    follower = User.find(info['follower_id'])
    followed = User.find(info['followed_id'])
    FollowNotice.send_follow_notice(follower,followed).deliver_now
  end
end
