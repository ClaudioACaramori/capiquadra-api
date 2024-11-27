class Api::V1::ReservationsController < ApplicationController
  has_scope :by_space_type, :by_start_date

  def index
    reservations = apply_scopes Reservation.all.order(start_hour: :asc)
    render json: reservations
  end

  def create
    reservation = Reservation.new(reservation_params)

    return render json: reservation, status: :created if reservation.save

    render json: reservation.errors, status: :unprocessable_entity
  end

  def destroy
    reservation = Reservation.find(params[:id])
    reservation.destroy

    render json: {}, status: :no_content
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :start_hour, :space_id, :renter)
  end
end
