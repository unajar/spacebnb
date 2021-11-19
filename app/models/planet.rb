class Planet < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_one_attached :photo
  monetize :price_cents

  validates :address, :description, :name, :price, presence: true
  validates :address, :name, uniqueness: true
  validates :description, length: { in: 1..300 }
  validates :name, length: { in: 1..15 }
end
