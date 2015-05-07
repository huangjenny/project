class AddNewdateToDishes < ActiveRecord::Migration
  def change
    add_column :dishes, :newdate, :date
  end
end
