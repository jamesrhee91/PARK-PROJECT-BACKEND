class User < ApplicationRecord
  has_many :reservations
  has_many :locations, through: :reservations
  has_secure_password
end
