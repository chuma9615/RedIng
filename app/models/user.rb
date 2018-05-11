class User < ActiveRecord::Base

  has_secure_password

  acts_as_voter
<<<<<<< HEAD
  
  has_many :subscriptions 
=======

  has_many :subscriptions
>>>>>>> Votes
  has_many :formus, through: :subscriptions

end
