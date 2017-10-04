class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.references :house, foreign_key: true
      t.references :user, foreign_key: true
      t.date     "check_in",     :null => false
      t.date     "check_out",    :null => false

      t.timestamps
    end
  end
end
