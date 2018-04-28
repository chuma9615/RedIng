class Article < ApplicationRecord
  belongs_to :forum
  has_many :comments, dependent: :destroy

end
