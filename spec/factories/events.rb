FactoryGirl.define do
  factory :event do
    name             "Birthday Party"
    description      "Birthday Party at Codaisseur"
    location         "Codaisseur"
    price            { Faker::Commerce.price }
    capacity         30
    includes_food    true
    includes_drinks  true
    starts_at        Time.now
    ends_at          Time.now
    active           true
    user             { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
