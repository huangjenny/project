class StoreController < ApplicationController
  include CurrentFavorite
  before_action :set_favorite, only: [:index]
  
  def index
    @dishes = Dish.order(:item)
    @yesterday = Dish.where("newdate = :start_date",
                            {start_date: Date.current.yesterday})
    @today = Dish.where("newdate = :start_date",
                        {start_date: Date.today})
    @tomorrow = Dish.where("newdate = :start_date",
                            {start_date: Date.current.tomorrow})
  end
end
