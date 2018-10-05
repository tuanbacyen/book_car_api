require "rails_helper"

RSpec.describe Car, type: :model do
  let!(:car) {FactoryBot.create :car}

  context "rspec schema" do
    it {is_expected.to have_db_column(:ten_xe).of_type :string}
    it {is_expected.to have_db_column(:ten_tai_xe).of_type :string}
    it {is_expected.to have_db_column(:bien_so).of_type :string}
    it {is_expected.to have_db_column(:gia_tien).of_type :float}
    it {is_expected.to have_db_column(:hang_xe).of_type :string}
    it {is_expected.to have_db_column(:sdt).of_type :string}
    it {is_expected.to have_db_column(:kinh_do).of_type :float}
    it {is_expected.to have_db_column(:vi_do).of_type :float}
    it {is_expected.to have_db_column(:trang_thai).of_type :boolean}
  end

  context "rspec validate" do
    it {is_expected.to validate_presence_of(:ten_xe)}
    it {is_expected.to validate_presence_of(:ten_tai_xe)}
    it {is_expected.to validate_presence_of(:bien_so)}
    it {is_expected.to validate_presence_of(:hang_xe)}
    it {is_expected.to validate_presence_of(:sdt)}
    it {is_expected.to validate_length_of(:ten_xe)}
    it {is_expected.to validate_length_of(:ten_tai_xe)}
    it {is_expected.to validate_length_of(:bien_so)}
    it {is_expected.to validate_length_of(:hang_xe)}
    it {is_expected.to validate_length_of(:sdt)}
  end

  context ".load_structure" do
    it { expect(car.load_structure).to eq car.load_structure }
  end

end