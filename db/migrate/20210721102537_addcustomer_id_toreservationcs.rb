class AddcustomerIdToreservationcs < ActiveRecord::Migration[5.2]
  def change
   add_column :reservationcs, :customer_id, :integer
  end
end
