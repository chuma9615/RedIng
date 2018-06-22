class Comment < ApplicationRecord
  include PublicActivity::Model
  tracked
  belongs_to :article

  acts_as_votable
  validates :content, presence: true
  validates :content, length: { maximum: 150,
    too_long: "%{count} caracteres es lo máximo permitido" }
end
