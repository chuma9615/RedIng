class Forum < ApplicationRecord
  include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user }
  has_many :articles, dependent: :destroy
  has_many :comments, through: :articles
  has_many :users, through: :admins
  has_many :admins, dependent: :destroy
  #has_and_belongs_to_many :users
  acts_as_followable
  validates :name, :description, presence: true
  validates :name, length: { maximum: 25,
    too_long: "%{count} caracteres es lo máximo permitido para el nombre del foro." }
  validates :description, length: { maximum: 100,
    too_long: "%{count} caracteres es lo máximo permitido para la descripción del foro." }

end
