class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :credits, default: 0
      t.string :photo
      t.integer :rating

      t.timestamps
    end
  end
end
