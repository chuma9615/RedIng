class Article < ApplicationRecord
  include PublicActivity::Model
  tracked
  acts_as_votable

  belongs_to :forum
  has_many :comments, dependent: :destroy
  validates :title, :body, presence: true
  validates :title, length: { maximum: 30,
    too_long: "%{count} caracteres es lo máximo permitido para el título del artículo." }
  validates :body, length: { maximum: 300,
    too_long: "%{count} caracteres es lo máximo permitido para la descripción del artículo." }

end
