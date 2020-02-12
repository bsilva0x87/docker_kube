# frozen_string_literal: true

FactoryBot.define do
  factory :book do
    title { Faker::Space.constellation }
    author { Faker::Name.name }
    code { Faker::Code.imei }
    language { Faker::Lorem.word }
  end
end
