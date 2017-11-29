class AddCalendarToHouse < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :calendar_url, :string

  end
end
