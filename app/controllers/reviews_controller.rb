class ReviewsController < ApplicationController

    def index
      @Reviews = Review.all
    end
  
  end