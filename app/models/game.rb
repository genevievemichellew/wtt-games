class Game < ApplicationRecord
  has_many :rents, dependent: :destroy
  validates :platform, :name, :price, presence: true
end
