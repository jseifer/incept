FactoryGirl.define do
  sequence :email do |n|
    "email#{n}@example.com"
  end

  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    password "password"
    password_confirmation "password"
  end

  factory :task do
    name "Task name"
  end

  factory :task_completion do
    task
    user
    active_minutes 0
  end
end
