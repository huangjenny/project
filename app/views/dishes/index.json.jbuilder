json.array!(@dishes) do |dish|
  json.extract! dish, :id, :item, :spicy, :gf
  json.url dish_url(dish, format: :json)
end
