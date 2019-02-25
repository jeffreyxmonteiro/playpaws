class User < ApplicationRecord
  has_many :playdates, dependent: :destroy
end
