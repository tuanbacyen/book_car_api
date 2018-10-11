class CarSerializer
  include FastJsonapi::ObjectSerializer
  attributes :ten_xe, :ten_tai_xe
  has_many :bookings
  has_many :images
  # https://github.com/Netflix/fast_jsonapi
end
