class User < ApplicationRecord
  has_many :reservations
  has_many :parking_spaces, through: :reservations
  has_secure_password
end
