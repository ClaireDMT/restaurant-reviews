class Review < ApplicationRecord
  belongs_to :restaurant  # review.restaurant
  # this adds a validation for restaurant presence
  validates :content, presence: true
end
