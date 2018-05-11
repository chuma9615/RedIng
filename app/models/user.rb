class User < ActiveRecord::Base

  has_secure_password

  acts_as_voter
  
  has_many :subscriptions 
  has_many :formus, through: :subscriptions

end
