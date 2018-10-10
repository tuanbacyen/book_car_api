require 'rails_helper'

RSpec.describe Image, type: :model do
  let!(:image) {FactoryBot.create :image}

  context "rspec schema" do
    it {is_expected.to have_db_column(:car_id).of_type :integer}
    it {is_expected.to have_db_column(:image).of_type :string}
  end

  context "rspec associations" do
    it {is_expected.to belong_to :car}
  end
end
