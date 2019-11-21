class Item < ApplicationRecord
  has_many :reviews
  has_many :cart_item
end
