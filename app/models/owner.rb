class Owner < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :dogs, dependent: :destroy
  # For calling owner.playdates so owner can see all their playdates
  has_many :playdates, through: :dogs

  def fullname
    "#{first_name} #{last_name}"
  end
end
