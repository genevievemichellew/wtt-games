class Game < ApplicationRecord
  PLATFORM = [
    'Dreamcast', 'Game Boy', 'Game Gear', 'Mega Drive', 'Nintendo', 'Nintendo 64',
    'Playstation 1', 'Playstation 2', 'Playstation 3', 'Playstation 4', 'Playstation 5',
    'Super Nintendo', 'Wii', 'Xbox', 'Xbox 360', 'Xbox One'
  ]

  belongs_to :user
  has_many :rents, dependent: :destroy
  has_one_attached :picture
  validates :platform, inclusion: { in: PLATFORM }
  validates :platform, :name, :picture, :price, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
