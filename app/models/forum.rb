class Forum < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_many :comments, through: :articles
  has_and_belongs_to_many :users
  acts_as_followable
  validates :name, :description, presence: true

end
