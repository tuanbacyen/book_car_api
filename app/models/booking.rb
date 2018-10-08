class Booking < ApplicationRecord
  belongs_to :car

  before_save :booking_car

  def load_structure
    result = {
      id: id,
      kd_start: kd_start,
      vd_start: vd_start,
      kd_end: kd_end,
      vd_end: vd_end,
      tong_tien: tong_tien,
      car_id: car_id
    }
    result
  end

  private

  def booking_car
    Booking.destroy_all if Booking.all.present?
  end
end
