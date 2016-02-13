# class that represents model for one mini tweet
class Meet < ActiveRecord::Base
  before_validation :generate_token, on: :create
  before_create :add_mentions

  default_scope { order('created_at DESC') }
  default_scope { where('created_at > ?', Time.now - 3.days) }

  belongs_to :user

  validates :content, presence: true, length: { maximum: 160 }
  validates :token, presence: true, uniqueness: { case_sensitive: false }

  private

  def generate_token
    self.token = SecureRandom.urlsafe_base64(10)
  end

  def add_mentions
    hashtags = self.content.scan(/#\w+/).flatten
    unless hashtags.empty?
      hashtags.each do |tag|
        next unless (u = User.find_by_first_name(tag[1..-1])) &&
                    (self.user.first_name != tag[1..-1])
        u.mentions_count += 1
        u.save
      end
    end
  end
end
