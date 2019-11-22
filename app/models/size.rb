class Size < ApplicationRecord
  has_many :items, through: :item_sizes
end
