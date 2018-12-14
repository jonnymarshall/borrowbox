class AddPhotoFakeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :photo_fake, :string
  end
end
