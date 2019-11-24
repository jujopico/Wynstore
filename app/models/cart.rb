class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items, dependent: :destroy
  has_many :item_sizes, through: :cart_items
  has_many :items, through: :item_sizes
  has_one :order

  def create
    @cart = Cart.create()
    @item = Item.find(params[:recipe_id])
  end

  def show
  end
end
