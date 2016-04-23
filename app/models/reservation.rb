class Reservation < ActiveRecord::Base
  belongs_to :room
  belongs_to :user
  has_one :reservation_type
end
