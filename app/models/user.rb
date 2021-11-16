class User < ApplicationRecord
  has_many :planets

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :user_name, uniqueness: true
  # validates :user_name, presence: true
end
