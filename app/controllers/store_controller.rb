class StoreController < ApplicationController
  include CurrentFavorite
  before_action :set_favorite, only: [:index]
  
  def index
    @dishes = Dish.order(:item)
  end
end
