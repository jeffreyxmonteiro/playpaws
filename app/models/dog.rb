class Dog < ApplicationRecord
  belongs_to :owner
  has_many :playdates, dependent: :destroy

  validates :name, presence: true
  validates :breed, presence: true
end
