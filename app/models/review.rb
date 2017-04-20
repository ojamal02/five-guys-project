class Review < ApplicationRecord
  belongs_to :burger

  validates :burger_rating, presence: true, numericality: true, inclusion: { in: 1..5, message: "must be between 1 - 5" }
  validates :body, presence: true, length: {minimum: 20, message: "of review must be 20 characters"}
end