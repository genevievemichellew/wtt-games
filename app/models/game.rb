class Game < ApplicationRecord
  # has_many :rents, dependent: :destroy
  validates :platform, :name, :price, presence: true
  has_one_attached :picture
  belongs_to :user
end
