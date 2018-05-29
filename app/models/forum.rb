class Forum < ApplicationRecord
  include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user }
  has_many :articles, dependent: :destroy
  has_many :comments, through: :articles
  has_and_belongs_to_many :users
  acts_as_followable
  validates :name, :description, presence: true

end
