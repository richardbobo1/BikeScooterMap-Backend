class ReviewsController < ApplicationController
  def index
    reviews = Review.all 
    render json: reviews.as_json(:include => [:user])
  end

  def show
    reviews = Review.where(route_id: params[:id])
    render json: reviews.as_json(:include => [:user])
  end

  def create
    review = Review.create(review_params)
    render json: review.as_json(:include => [:user])
  end 

  def destroy
    review = Review.find_by(id: params[:id])
    review.destroy
    render json: review 
  end 


  private


def review_params
  params.require(:review).permit(:user_id, :route_id, :comments, :rating)
end


end
