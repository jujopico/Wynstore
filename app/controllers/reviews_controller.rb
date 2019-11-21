class ReviewsController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    @review = @item.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to @item
    end

  end

  private 
    def review_params 
      params.require(:review).permit(:comments, :rating, :id)
    end 
end