class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :item
      t.boolean :spicy
      t.boolean :gf

      t.timestamps
    end
  end
end
