class RestaurantsController < ApplicationController
  def index
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to @restaurant
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
  end

  def updates
  end

  def destroy
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :description, :category_id)
    end
end
