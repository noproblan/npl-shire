FactoryBot.define do
  factory :user do
    sequence :nickname do |n|
      "lulzorz#{n}"
    end

    sequence :email do |n|
      "person+#{n}@example.com"
    end

    password '12345678'
  end
end
