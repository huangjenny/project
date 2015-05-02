class Favorite < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  has_many :dishes, through: :line_items

end
