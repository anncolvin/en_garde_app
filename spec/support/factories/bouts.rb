FactoryGirl.define do

  factory :bout do
    location "Pomme de Terre"
    qualifying "Yes"
    notes "This bout is very exciting!"
    association :fencer, factory: :fencer
  end
end
