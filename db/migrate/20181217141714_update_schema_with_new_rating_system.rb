class UpdateSchemaWithNewRatingSystem < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :rating, :combined_rating
    remove_column :users, :rating
  end
end
