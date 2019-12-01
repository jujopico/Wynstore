class Order < ApplicationRecord
  belongs_to :cart
  belongs_to :user
  attribute :order_status, :integer, default: 0
  enum order_status: [:pending, :ready, :received]
end
