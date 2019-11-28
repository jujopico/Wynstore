class Item < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :cart_item, dependent: :destroy
  has_many :item_sizes
  has_many :sizes, through: :item_sizes

  def average_rating 
    reviews.reduce(0) { |acc, review| acc + review.rating } / reviews.length if !reviews.empty?
  end 
end

