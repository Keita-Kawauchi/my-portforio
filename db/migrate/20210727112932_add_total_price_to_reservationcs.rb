class AddTotalPriceToReservationcs < ActiveRecord::Migration[5.2]
  def change
    add_column :reservationcs, :total_price, :integer
  end
end
