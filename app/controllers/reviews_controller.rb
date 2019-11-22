class ReviewsController < ApplicationController
  
  def create
    @item = Item.find(params[:item_id])
    @review = @item.reviews.new(review_params)
    @review.user = current_user
    redirect_to @item if @review.save
  end
  
    def index
      @Reviews = Review.all
    end
  end