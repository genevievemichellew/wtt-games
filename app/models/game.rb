class Game < ApplicationRecord

  PLATFORM = [
    'Dreamcast', 'Game Boy', 'Game Gear', 'Nintendo (NES)', 'Nintendo 64', 'Playstation',
    'Playstation 2', 'Playstation 3', 'Playstation 4', 'Playstation 5', 'Sega Genesis (Mega Drive)',
    'Super Nintendo (SNES)', 'Wii', 'Xbox', 'Xbox 360', 'Xbox One'
  ]

  include PgSearch::Model
  pg_search_scope :search_by_name_platform,
  against: [ :name, :platform ],
  using: {
    tsearch: { prefix: true }
  }

  belongs_to :user
  has_many :rents, dependent: :destroy
  has_one_attached :picture
  validates :platform, inclusion: { in: PLATFORM }
  validates :platform, :name, :picture, :price, presence: true
end
