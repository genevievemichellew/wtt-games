class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :rents
  has_many :games

  validate_uniqueness_of :email
  validate_presence_of :email, :first_name, :last_name
end
