class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :dish, index: true
      t.belongs_to :favorite, index: true

      t.timestamps
    end
  end
end
