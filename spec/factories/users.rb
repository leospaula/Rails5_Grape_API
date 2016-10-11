# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:email){|n|"email#{n}@example.com"}
    sequence(:name){|n|"test_user_#{n}"}
    password '12345678'
    password_confirmation '12345678'
  end
end
