require 'test_helper'

class FavoriteTest < ActiveSupport::TestCase
  test "favorite attributes must not be empty" do
    favorite = Favorite.new
    assert favorite.invalid?
    assert favorite.errors[:item].any?
  end

  test "favorite is not valid without a unique title" do
    favorite = Favorite.new(item: favorites(:one).item)
    assert favorite.invalid?
    assert_equal ["has already been taken"], favorite.errors[:item]
  end

  test "favorite is not valid without a unique title - i18n" do
    favorite = Favorite.new(item: favorites(:one).item)
    assert favorite.invalid?
    assert_equal [I18n.translate('errors.messages.taken')],
                 favorite.errors[:item]
  end
end
