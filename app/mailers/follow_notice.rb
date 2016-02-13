class FollowNotice < ApplicationMailer
  def send_follow_notice(follower, followed)
    @follower = follower
    @followed = followed
    
    mail(from: 'follow_notice@mitter.com',
	 to: @followed.email,
	 subject: 'New follower notice!')
  end
end
