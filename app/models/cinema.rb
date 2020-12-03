class Cinema < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  validates :location, :capacity, :price, :description, :movie_selection, :description, :screen_size, presence: true
end
