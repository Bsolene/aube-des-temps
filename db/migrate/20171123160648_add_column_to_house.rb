class AddColumnToHouse < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :capacity, :integer
    add_column :houses, :room, :integer
    add_column :houses, :single_bed, :integer
    add_column :houses, :double_bed, :integer
  end
end
