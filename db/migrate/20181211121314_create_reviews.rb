class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :content
      t.integer :item_rating
      t.integer :lender_rating

      t.timestamps
    end
  end
end
