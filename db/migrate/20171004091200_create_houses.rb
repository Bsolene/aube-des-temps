class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :name
      t.integer :price
      t.integer :epis
      t.text :description

      t.timestamps
    end
  end
end
