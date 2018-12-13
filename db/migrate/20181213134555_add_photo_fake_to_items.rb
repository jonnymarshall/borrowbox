class AddPhotoFakeToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :photo_fake, :string
  end
end
