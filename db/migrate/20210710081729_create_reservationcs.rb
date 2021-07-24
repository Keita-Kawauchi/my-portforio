class CreateReservationcs < ActiveRecord::Migration[5.2]
  def change
    create_table :reservationcs do |t|

      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.integer :price
      t.timestamps
    end
  end
end
