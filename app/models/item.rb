class Item < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :cart_item, dependent: :destroy
  has_many :item_sizes
  has_many :sizes, through: :item_sizes

end
