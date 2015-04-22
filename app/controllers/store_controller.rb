class StoreController < ApplicationController
  def index
    @dishes = Dish.order(:item)
  end
end
