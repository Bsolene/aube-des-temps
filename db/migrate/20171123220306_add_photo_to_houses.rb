class AddPhotoToHouses < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :photos, :string, array: true, default: []
  end
end
