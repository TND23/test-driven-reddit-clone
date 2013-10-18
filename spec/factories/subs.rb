require 'faker'
FactoryGirl.define do
  factory :sub do
    #has moderator_id, name
    moderator_id (1..10).to_a.sample
    name Faker::Lorem.words
  end
end
