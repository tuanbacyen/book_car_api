FactoryBot.define do
  factory :image do
    image   { Faker::Internet.url }
    car     {FactoryBot.create :car}
  end
end
