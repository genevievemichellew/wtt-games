class Rent < ApplicationRecord
  belongs_to :game
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true

  validates :game_id, :uniqueness => { :scope => :user_id }
  enum status: %i[pending confirmed canceled]
end
