class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :planet

  validates :start_date, :end_date, presence: true
  validates :user_id, uniqueness: { scope: :planet_id }
  validate :start_date_cannot_be_in_the_past
  validate :end_date_cannot_be_before_start_date

  def start_date_cannot_be_in_the_past
    errors.add(:start_date, "can't be in the past") if start_date < Date.today
  end

  def end_date_cannot_be_before_start_date
    errors.add(:end_date, "can't be before start date") if start_date > end_date
  end
end
