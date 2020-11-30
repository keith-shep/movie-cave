class Cinema < ApplicationRecord
  belongs_to :user
  validates :location, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
