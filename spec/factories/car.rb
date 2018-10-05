FactoryBot.define do
  factory :car do
    ten_xe       { Faker::Name.name }
    ten_tai_xe   { Faker::Cat.name }
    bien_so      { "30S-#{Faker::Number.number(5)}"}
    gia_tien     { Faker::Number.decimal(5, 2) }
    hang_xe      { Faker::Name.suffix }
    sdt          { Faker::Number.number(11) }
    kinh_do      { Faker::Number.decimal(2, 5) }
    vi_do        { Faker::Number.decimal(2, 5) }
    trang_thai   { false }
  end
end
