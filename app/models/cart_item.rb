class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :item
  has_many :item
end
