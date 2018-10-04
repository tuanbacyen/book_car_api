
class V1::CarsController < ApplicationController
  before_action :load_car, only: %i(update)

  def index
    cars = Car.select :id, :ten_xe, :ten_tai_xe, :bien_so, :gia_tien, :hang_xe, :sdt,
                      :kinh_do, :vi_do, :vi_do, :trang_thai
    render json: {
        status: 200,
        error: false,
        message: "susses",
        data: cars
    }, status: 200
  end

  def create
    car = Car.new car_params
    if car.save
      render json: {
        status: 200,
        error: false,
        message: "",
        data: car.load_structure
      }, status: 200
    else
      render json: {
        status: 500,
        error: true,
        message: car.errors.full_messages.to_sentence,
        data: nil
      }, status: 500
    end
  end

  def update
    if @car.update_attributes car_params
      render json: {
        status: 200,
        error: false,
        message: "success",
        data: @car.load_structure,
      }, status: 200
    else
      render json: {
        status: 500,
        error: true,
        message: @car.errors.full_messages.to_sentence,
        data: nil
      }, status: 500
    end
  end

  def bookcancel
    car = Car.find_by id: params[:id]
    car.trang_thai = !@car.trang_thai
    if car.save
      render json: {
        status: 200,
        error: false,
        message: "success",
        data: car.load_structure,
      }, status: 200
    else
      render json: {
        status: 500,
        error: true,
        message: car.errors.full_messages.to_sentence,
        data: nil
      }, status: 500
    end
  end

  private

  def load_car
    @car = Car.find_by id: params[:id]
    return if @car
    render json: {
      status: 404,
      error: true,
      message: "car not exist",
      data: nil
    }, status: 404
  end

  def car_params
    params.require(:car).permit :ten_xe, :ten_tai_xe, :bien_so, :gia_tien,
                                :hang_xe, :sdt, :kinh_do, :vi_do, :trang_thai
  end
end
