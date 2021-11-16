class Planet < ApplicationRecord
  belongs_to :user

  validates :user_id, :address, :description, :name, :price, presence: true
  validates :address, :name, uniqueness: true
  # add lenght validation
end
