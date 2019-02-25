class Dog < ApplicationRecord
  belongs_to :owner
  has_many :playdates, dependent: :destroy
end
