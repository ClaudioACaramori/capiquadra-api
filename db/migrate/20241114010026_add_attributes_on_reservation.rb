class AddAttributesOnReservation < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :start_date, :date
    add_column :reservations, :start_hour, :time
    add_column :reservations, :space_id, :bigint
  end
end
