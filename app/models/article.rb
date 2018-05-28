class Article < ApplicationRecord

  acts_as_votable

  belongs_to :forum
  has_many :comments, dependent: :destroy
  validates :title, :body, presence: true

end
