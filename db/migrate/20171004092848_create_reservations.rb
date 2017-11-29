class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.references :house, foreign_key: true
      t.date :start_time, :null => false
      t.date :end_time, :null => false

      t.timestamps
    end
  end
end
