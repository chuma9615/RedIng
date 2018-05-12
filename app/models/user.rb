class User < ActiveRecord::Base

  has_secure_password

  acts_as_voter
  
  acts_as_follower


  has_many :forums

end
