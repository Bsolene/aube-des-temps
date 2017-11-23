class AddPhotoToHouses < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :photo, :string
  end
end
