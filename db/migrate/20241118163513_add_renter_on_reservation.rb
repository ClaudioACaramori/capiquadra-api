class AddRenterOnReservation < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :renter, :string
  end
end
