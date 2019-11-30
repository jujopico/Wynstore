class Item < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :cart_item, dependent: :destroy
  has_many :item_sizes
  has_many :sizes, through: :item_sizes
  has_many :item_images

  def average_rating
    return 0 if reviews.empty?
    (reviews.where.not(rating: nil).reduce(0) { |acc, review| acc + review.rating } / reviews.length).round
  end
end
