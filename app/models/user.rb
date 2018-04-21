class User < ActiveRecord::Base

  has_secure_password

  has_many :subscriptions 
  has_many :formus, through: :subscriptions

end
