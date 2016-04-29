FactoryGirl.define do
  sequence :email do |n|
    "fencingcoach#{n}@example.com"
  end

  sequence :user_name do |n|
    "awesomecoach#{n}"
  end

  factory :user do
    user_name
    email
    password "fencingisthebest"
  end
end
