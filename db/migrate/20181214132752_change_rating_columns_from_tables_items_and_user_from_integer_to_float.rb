class ChangeRatingColumnsFromTablesItemsAndUserFromIntegerToFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :rating, :float
    change_column :users, :rating, :float
  end
end
