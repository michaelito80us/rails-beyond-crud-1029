class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true

  # review.restaurant
end
