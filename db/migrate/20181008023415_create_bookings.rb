class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.float :kd_start
      t.float :vd_start
      t.float :kd_end
      t.float :vd_end
      t.float :tong_tien
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
