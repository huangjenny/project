class Dish < ActiveRecord::Base
  validates :item, presence: true
  validates :item, uniqueness: true
end
