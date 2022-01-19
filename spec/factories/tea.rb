FactoryBot.define do
  factory :tea do
    title { Faker::Tea.variety }
    description { Faker::Tea.type }
    temperature { Faker::Number.decimal_part(digits: 2) }
    brew_time { Faker::Number.within(range: 5..200) }
  end
end
