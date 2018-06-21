class User < ActiveRecord::Base

  has_secure_password

  acts_as_voter

  acts_as_follower

  has_many :admins
  has_many :forums, through: :admins


  #has_and_belongs_to_many :forums
  validates :first_name, :last_name, :born_year, presence: true
end
