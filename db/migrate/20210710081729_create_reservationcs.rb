class CreateReservationcs < ActiveRecord::Migration[5.2]
  def change
    create_table :reservationcs do |t|
      t.string :name
      t.datetime :start_time

      t.timestamps
    end
  end
end
