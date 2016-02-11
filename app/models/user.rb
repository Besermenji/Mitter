# class that represents mitter user
class User < ActiveRecord::Base
  has_many :meets

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birth_date, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def name
    [first_name, last_name].join(' ')
  end
end
