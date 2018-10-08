class V1::BookingsController < ApplicationController
  def index
    books = Booking.select :id, :kd_start, :vd_start, :kd_end, :vd_end,
      :tong_tien, :car_id

    render_js books, "cac xe dang duoc book"
  end

  def create
    car = Car.find_by id: params[:booking][:car_id]
    unless car.nil?
      if check_car car
        booking = Booking.new booking_params
        if booking.save
          render_js booking.load_structure, "Xe da có người đặt"
        else
          render_js nil, "errors #{booking.errors.full_messages.to_sentence}"
        end
      else
        render_js nil, "Xe da có người đặt"
      end
    end
    render_js nil, "Xe không tồn tại"
  end

  def destroy
    book = Booking.find_by id: params[:id]
    unless book.nil?
      if book.destroy
        render_js "1", "Xoa dat xe thanh cong"
      else
        render_js nil, "Xoa dat xe khong thanh cong"
      end
    end
    render_js nil, "request not exits"
  end

  private

  def check_car car
    if car.trang_thai
      car.trang_thai = !car.trang_thai
      car.save
    end
    false
  end

  def booking_params
    params.require(:booking).permit :kd_start, :vd_start, :kd_end, :vd_end,
      :tong_tien, :car_id
  end
end
