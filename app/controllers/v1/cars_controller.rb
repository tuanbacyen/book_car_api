class V1::CarsController < ApplicationController
  before_action :load_car, only: %i(update)

  def index
    cars = []
    Car.all.each{|c| cars.push c.load_structure}

    my_render_js cars, "tất cả các xe"
  end

  def create
    car = Car.new car_params
    if car.save
      params[:car][:images].each do |img|
        car.images.create!(image: img)
      end
      render_js car.load_structure, "tao xe thanh cong"
    else
      my_render_js nil, "errors #{car.errors.full_messages.to_sentence}"
    end
  end

  def update
    if @car.update_attributes car_params
      my_render_js @car.load_structure, "cap nhat xe ko thanh cong"
    else
      my_render_js nil, "errors #{@car.errors.full_messages.to_sentence}"
    end
  end

  def bookcancel
    car = Car.find_by id: params[:id]
    car.trang_thai = !car.trang_thai
    if car.save
      my_render_js car.load_structure, "success"
    else
      my_render_js nil, "errors #{car.errors.full_messages.to_sentence}"
    end
  end

  private

  def load_car
    @car = Car.find_by id: params[:id]
    return if @car
    my_render_js nil, "car not exist"
  end

  def car_params
    params.require(:car).permit :ten_xe, :ten_tai_xe, :bien_so, :gia_tien,
      :hang_xe, :sdt, :kinh_do, :vi_do, :trang_thai, images_attributes: []
  end
end
