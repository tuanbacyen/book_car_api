require 'rails_helper'

RSpec.describe Booking, type: :model do
  let!(:booking) {FactoryBot.create :booking}

  context "rspec schema" do
    it {is_expected.to have_db_column(:kd_start).of_type :float}
    it {is_expected.to have_db_column(:vd_start).of_type :float}
    it {is_expected.to have_db_column(:kd_end).of_type :float}
    it {is_expected.to have_db_column(:vd_end).of_type :float}
    it {is_expected.to have_db_column(:tong_tien).of_type :float}
    it {is_expected.to have_db_column(:car_id).of_type :integer}
  end

  context "rspec associations" do
    it {is_expected.to belong_to :car}
  end

  context ".load_structure" do
    it { expect(booking.load_structure).to eq booking.load_structure }
  end

  context "#booking_car" do
    it { expect(booking.send :booking_car).to eq [booking] }
  end
end
