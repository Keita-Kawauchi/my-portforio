class AddColumnToReservationcs < ActiveRecord::Migration[5.2]
  def change
    add_column :reservationcs, :number_of_people, :integer
  end
end
