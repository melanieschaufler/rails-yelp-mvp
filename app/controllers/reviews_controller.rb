class ReviewsController < ApplicationController
   # 2. GET /restaurants/:restaurant_id/reviews/new
  def new
    @review = Review.new # Empty object for FormBuilder to do magic
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  # 3. POST /restaurants/:restaurant_id/reviews => { "restaurant_id" => 42}
  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save # never unconditionally save!
      # HAPPY PATH
      redirect_to restaurant_path(@restaurant)
      # triggers a new request, loses all state
    else
      # SAD PATH
      render "new"
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
