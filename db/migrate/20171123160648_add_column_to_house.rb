class AddColumnToHouse < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :capacity, :integer, :default => 0
    add_column :houses, :room, :integer, :default => 0
    add_column :houses, :single_bed, :integer, :default => 0
    add_column :houses, :double_bed, :integer, :default => 0
    add_column :houses, :bathroom, :integer, :default => 0
  end
end
