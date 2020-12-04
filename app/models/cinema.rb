class Cinema < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  validates :location, :capacity, :price, :movie_selection, :description, :screen_size, presence: true
  has_many_attached :photos

  include PgSearch::Model
  pg_search_scope :search_by_location,
    against: [ :location ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

end
