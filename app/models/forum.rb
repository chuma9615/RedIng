class Forum < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_many :comments, through: :articles

  acts_as_followable

end
