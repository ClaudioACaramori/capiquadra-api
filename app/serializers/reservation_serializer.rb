class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :start_hour, :renter, :space

  def space
    object.space
  end
end