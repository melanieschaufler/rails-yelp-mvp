class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }

  RATINGS = [0, 1, 2, 3, 4, 5]
  validates :rating, inclusion: { in: RATINGS, message: "the rating is not between 0 and 5"}
end
