class Meet < ActiveRecord::Base
  belongs_to :user

  validates :content, presence: true, length: { maximum: 160 }
  validates :token, presence: true, uniqueness: { case_sensitive: false } 
end
