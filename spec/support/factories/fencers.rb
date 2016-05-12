FactoryGirl.define do

  sequence :name do |n|
    "name#{n}"
  end

  factory :fencer do
    name
    dominant_hand "Right"
    category "Vet"
    letter_rating "U"
    notes "This fencer is awesome!"
    association :user, factory: :user
  end
end
