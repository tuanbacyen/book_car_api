class V1::BookingsController < ApplicationController
  def index
    books = Booking.select :id, :kd_start, :vd_start, :kd_end, :vd_end,
      :tong_tien, :car_id

    my_render_js books, "cac xe dang duoc book"
  end

  def create
    car = Car.find_by id: params[:booking][:car_id]
    if !car.nil?
      if car.trang_thai
        booking = Booking.new booking_params
        if booking.save
          car.change_status
          my_render_js booking.load_structure, "dat thanh cong"
        else
          my_render_js nil, "errors #{booking.errors.full_messages.to_sentence}"
        end
      else
        my_render_js nil, "Xe da có người đặt"
      end
    else
      my_render_js nil, "Xe không tồn tại"
    end
  end

  def destroy
    book = Booking.find_by id: params[:id]
    if !book.nil?
      if book.destroy
        Car.find_by(id: book.car_id).change_status
        my_render_js "1", "Xoa dat xe thanh cong"
      else
        my_render_js nil, "Xoa dat xe khong thanh cong"
      end
    else
      my_render_js nil, "request not exits"
    end
  end

  private

  def booking_params
    params.require(:booking).permit :kd_start, :vd_start, :kd_end, :vd_end,
      :tong_tien, :car_id
  end
end
