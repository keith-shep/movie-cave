class Cinema < ApplicationRecord
  belongs_to :user
  validates :location, :capacity, :price, :description, :movie_selection, :description, :screen_size, presence: true
  has_many_attached :photos
end
