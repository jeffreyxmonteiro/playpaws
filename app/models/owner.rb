class Owner < ApplicationRecord
  has_many :dogs, dependent: :destroy
  # For calling owner.playdates so owner can see all their playdates
  has_many :playdates, through: :dogs
end
