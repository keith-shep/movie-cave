class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :cinema
  validates :date, presence: true
end
