class User < ActiveRecord::Base

  has_secure_password

  acts_as_voter

  acts_as_follower


  has_and_belongs_to_many :forums

end
