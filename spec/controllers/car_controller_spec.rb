require "rails_helper"

RSpec.describe Car, type: :controller do
  let!(:car) {FactoryBot.create :car}
end
