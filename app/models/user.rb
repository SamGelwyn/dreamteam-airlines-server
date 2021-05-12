class User < ApplicationRecord
  has_many :reservations
  # has_many :flights through: :reservations
  validates :email, :presence => true, :uniqueness => true
end
