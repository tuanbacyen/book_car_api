class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :ten_xe
      t.string :ten_tai_xe
      t.string :bien_so
      t.float :gia_tien
      t.string :hang_xe
      t.string :sdt
      t.float :kinh_do
      t.float :vi_do
      t.boolean :trang_thai, default: false

      t.timestamps
    end
  end
end
