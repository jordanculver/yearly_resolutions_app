FactoryGirl.define do
  factory :goal do
    name { Faker::Name.title }
    description { Faker::Lorem.paragraph }
    start_date { Date.today }
    due_date { 30.days.from_now.to_date }
    difficulty_level { rand(1..10).to_i }
    status { Goal::STATUSES[rand(2)] }
    user
  end
end
