class Game < ApplicationRecord
<<<<<<< Updated upstream
  has_many :rents, dependent: :destroy
  has_one_attached :photo
  validates :platform, :name, :price, presence: true
=======
  # has_many :rents, dependent: :destroy
  PLATFORM = [
    'Dreamcast', 'Game Boy', 'Game Gear', 'Nintendo (NES)', 'Nintendo 64', 'Playstation',
    'Playstation 2', 'Playstation 3', 'Playstation 4', 'Playstation 5', 'Sega Genesis (Mega Drive)',
    'Super Nintendo (SNES)', 'Wii', 'Xbox', 'Xbox 360', 'Xbox One'
  ]
  # has_many :rents, dependent: :destroy
  belongs_to :user
  has_one_attached :picture
  validates :platform, inclusion: { in: PLATFORM }
  validates :platform, :name, :picture, :price, presence: true
>>>>>>> Stashed changes
end
