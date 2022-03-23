class RestaurantsController < ApplicationController
#  before_action :set_restaurant, only: [:show, :edit]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end

    # # PATCH/PUT /restaurants/1
    # def update
    #   if @restaurant.update(restaurant_params)
    #     redirect_to @restaurant, notice: 'Restaurant was successfully updated.'
    #   else
    #     render :edit
    #   end
    # end

    # # DELETE /restaurants/1
    # def destroy
    #   @restaurant.destroy
    #   redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.'
    # end

    # def top
    #   @restaurants = Restaurant.where(stars: 5)
    # end

    # def chef
    #   @chef_name = @restaurant.chef_name
    # end

    # private
    #   # Use callbacks to share common setup or constraints between actions.
    #   def set_restaurant
    #     @restaurant = Restaurant.find(params[:id])
    #   end


      def restaurant_params
        params.require(:restaurant).permit(:name, :address, :category)
      end
end
