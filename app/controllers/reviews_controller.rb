class ReviewsController < ApplicationController
  def index
    reviews = Review.all 
    render json: reviews.as_json(:include => [:user])
  end
end
