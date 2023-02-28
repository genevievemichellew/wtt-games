class Game < ApplicationRecord
  has_many :rents, dependent: :destroy
  has_one_attached :photo
  validates :platform, :name, :price, presence: true
end
