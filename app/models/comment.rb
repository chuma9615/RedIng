class Comment < ApplicationRecord
  include PublicActivity::Model
  tracked
  belongs_to :article

  acts_as_votable

end
