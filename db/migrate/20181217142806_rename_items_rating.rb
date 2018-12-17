class RenameItemsRating < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :combined_rating, :comb_rating
  end
end
