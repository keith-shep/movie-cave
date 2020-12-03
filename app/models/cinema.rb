class Cinema < ApplicationRecord
  belongs_to :user
  validates :location, :capacity, :price, :description, :movie_selection, :description, :screen_size, :photo, presence: true
  has_one_attached :photo
end
