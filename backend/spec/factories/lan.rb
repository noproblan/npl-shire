FactoryBot.define do
  factory :lan do
    name 'noprobLAN v133.7'
    starts_at 42.days.from_now
    ends_at 45.days.from_now
    planned_seats 120
    description 'Beste und gemütlichste LAN PARTEEEEYYY eva!1!!'

    trait :past do
      starts_at 42.days.ago
      ends_at 40.days.ago
    end

    trait :now do
      starts_at 1.day.ago
      ends_at 1.day.from_now
    end

    trait :coming do
      starts_at 50.days.from_now
      ends_at 52.days.from_now
    end
  end
end
