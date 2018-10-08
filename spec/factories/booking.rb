FactoryBot.define do
  factory :booking do
    kd_start  { Faker::Number.decimal(2, 5) }
    vd_start  { Faker::Number.decimal(2, 5) }
    kd_end    { Faker::Number.decimal(2, 5) }
    vd_end    { Faker::Number.decimal(2, 5) }
    tong_tien { Faker::Number.decimal(5, 2) }
    car    {FactoryBot.create :car}
  end
end
