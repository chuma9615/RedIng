class Forum < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_many :comments, through: :articles

  acts_as_votable

  has_many :subscriptions
  has_many :users, through: :subscriptions

end
