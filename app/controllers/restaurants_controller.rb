class RestaurantsController < ApplicationController

  before_filter :find_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @menus = @restaurant.menus
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
    @menu = @restaurant.menus.new
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update    
    respond_to do |format|
      if @restaurant.update_attributes(params[:restaurant])
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url }
    end
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
