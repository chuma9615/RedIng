class Comment < ApplicationRecord
  belongs_to :article

  acts_as_votable
  validates :content, presence: true
end
