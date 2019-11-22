class Size < ApplicationRecord
  has_many :items, through: :item_sizes, optional: :true
end
