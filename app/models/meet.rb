class Meet < ActiveRecord::Base
  before_validation :generate_token, on: :create

  default_scope { order('created_at DESC') }
  default_scope { where("created_at > ?", Time.now-3.days) }
	
  belongs_to :user

  validates :content, presence: true, length: { maximum: 160 }
  validates :token, presence: true, uniqueness: { case_sensitive: false } 


  private

  def generate_token 
    self.token = SecureRandom.urlsafe_base64(10)
  end
end
