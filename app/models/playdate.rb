class Playdate < ApplicationRecord
  belongs_to :user
  belongs_to :dog

  validates :date, presence: true
  validates :payment, presence: true, inclusion: { in: ["cash", "credit"] }
  validates :completed, presence: true, inclusion: { in: [true, false] }
end
