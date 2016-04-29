FactoryGirl.define do

  factory :point do
    status "Lost"
    reason_category "Distance"
    reason "Too Close"
    association :bout, factory: :bout
  end
end
