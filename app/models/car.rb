class Car < ApplicationRecord
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
      kinh_do: kinh_do,
      vi_do: vi_do,
      trang_thai: trang_thai
    }
    result
  end
end
