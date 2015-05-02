class LineItem < ActiveRecord::Base
  belongs_to :dish
  belongs_to :favorite

  validate :favValidation
  

  #favorite
  #dish
  #favorite.dishes

  # validation
  
  # loop through favorite.dishes (list of favorites) and check if dish (dish trying to add) is in there
  # if not, add to favorite
  # else, do not add -> send error message: favorite already exists

  def favValidation    
    favorite.dishes.each {|favorite|
      if favorite.id == dish.id then
        errors.add(:base, "#{dish.item} is already in your favorites" )
      end
    } 
  end
end
