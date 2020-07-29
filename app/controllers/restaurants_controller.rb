class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit]
  # GET /restaurants
  def index
    @restaurants = Restaurant.all
  end

  # 1. GET /restaurants/1
  # 4.
  def show
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # POST /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /restaurants/1
  def update
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant, notice: 'Restaurant was successfully updated.'
    else
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

     # Only allow a trusted parameter "white list" through.
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    end
end
