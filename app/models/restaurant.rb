class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :stars, inclusion: { in: (1..5)}
  has_many :reviews, dependent: :destroy  # restaurant.reviews
end
