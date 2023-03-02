class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :rents, dependent: :destroy
  has_many :games, dependent: :destroy
  has_many :received_rents, through: :games, source: :rents

  validates_uniqueness_of :email
  validates_presence_of :email
  # , :first_name, :last_name
end
