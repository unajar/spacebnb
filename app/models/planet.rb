class Planet < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :user_id, :address, :description, :name, :price, presence: true
  validates :address, :name, uniqueness: true
  validates :description, length: { in: 1..300 }
  validates :name, length: { in: 1..15 }
end
