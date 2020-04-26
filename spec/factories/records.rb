FactoryBot.define do
  factory :record do
    entered_at {"2020-01-19 05:42:00"}
    exited_at {"2020-01-19 05:45:00"}
    association :user
  end
end
