class AddCategoryIndexToRestaurants < ActiveRecord::Migration
  def change
    add_reference :restaurants, :category, index: true
  end
end
