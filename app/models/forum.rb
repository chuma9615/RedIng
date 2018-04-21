class Forum < ApplicationRecord
  has_many :articles
  has_many :comments, through: :articles


  has_many :subscriptions
  has_many :users, through: :subscriptions

end
