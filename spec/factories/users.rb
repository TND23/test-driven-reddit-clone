require 'faker'

FactoryGirl.define do
  factory :user do
    user_name Faker::Name.first_name
    password Faker::Name.last_name
    session_token SecureRandom.urlsafe_base64(16)
  end
end