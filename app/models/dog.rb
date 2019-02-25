class Dog < ApplicationRecord
  belongs_to :owner
  has_many :playdates
end
