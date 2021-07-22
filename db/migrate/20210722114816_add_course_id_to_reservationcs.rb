class AddCourseIdToReservationcs < ActiveRecord::Migration[5.2]
  def change
    add_column :reservationcs, :course_id, :integer
  end
end
