require 'test_helper'

class DishTest < ActiveSupport::TestCase
  fixtures :dishes
  
  test "dish attributes must not be empty" do
    dish = Dish.new
    assert dish.invalid?
    assert dish.errors[:item].any?
  end

  test "dish is not valid without a unique title" do
    dish = Dish.new(item: dishes(:three).item,
                    spicy: true,
                    gf: true)
    assert dish.invalid?
    assert_equal ["has already been taken"], dish.errors[:item]
  end

  test "dish is not valid without a unique title - i18n" do
    dish = Dish.new(item: dishes(:three).item,
                    spicy: true,
                    gf: true)
    assert dish.invalid?
    assert_equal [I18n.translate('errors.messages.taken')],
                 dish.errors[:item]
  end
end
