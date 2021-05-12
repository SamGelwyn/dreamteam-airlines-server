class RenameReservationsSeatidToSeat < ActiveRecord::Migration[5.2]
  def change
    rename_column :reservations, :seat_id, :seat
  end
end
