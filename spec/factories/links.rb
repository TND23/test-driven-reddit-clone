require 'faker'

FactoryGirl.define do
  factory :link do
    user_id (1..10).to_a.sample
    title Faker::Lorem.sentence
    url Faker::Internet.domain_name
    content Faker::Lorem.paragraph
    link_sub_id (20..100).to_a.sample
  end
end


