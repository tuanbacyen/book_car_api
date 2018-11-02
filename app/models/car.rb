class Car < ApplicationRecord
  has_many :bookings
  has_many :images
  accepts_nested_attributes_for :images

  validates :ten_xe, presence: true, length: {maximum: 50}
  validates :ten_tai_xe, presence: true, length: {maximum: 50}
  validates :bien_so, presence: true, length: {maximum: 10}
  validates :hang_xe, presence: true, length: {maximum: 50}
  validates :sdt, presence: true, length: {maximum: 11}

  def load_structure
    result = {
      id: id,
      ten_xe: ten_xe,
      ten_tai_xe: ten_tai_xe,
      bien_so: bien_so,
      gia_tien: gia_tien,
      hang_xe: hang_xe,
      sdt: sdt,
      kinh_do: kinh_do.to_s,
      vi_do: vi_do.to_s,
      trang_thai: trang_thai,
      images: load_images
    }
    result
  end

  def change_status
    self.trang_thai = !trang_thai
    save
  end

  def load_images
    arr = []
    images.each do |img|
      url = img.image.url
      url ||= img.image.metadata["url"]
      arr.push(
        url
      )
    end
    arr.first.nil? ? "http://sohanews.sohacdn.com/thumb_w/660/2017/photo1513394146174-1513394146174.png" : arr.first
  end
end
