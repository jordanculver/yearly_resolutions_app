FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com" }

  factory :user do
    name 'Test User'
    email { generate(:email) }
    password 'changeme'
    password_confirmation 'changeme'

    trait :admin do 
      after(:create) do |user|
        user.add_role :admin
      end
    end

    trait :user do 
      after(:create) do |user|
        user.add_role :user
      end
    end
  end
end
