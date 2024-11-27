class Reservation < ApplicationRecord
  belongs_to :space, class_name: 'Space', foreign_key: 'space_id'

  validates_presence_of :start_date, :start_hour

  validates :start_date, uniqueness: { scope: :start_hour, message: 'Este horário já está reservado para este dia.' }

  scope :by_start_date, -> start_date { where(start_date: start_date) }
  scope :by_space_type, -> space_type { joins(:space).where(spaces: { type: space_type }) }
end
