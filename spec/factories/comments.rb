# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :comment do
    linnie Faker::Lorem.sentence
    parent_comment_id (200..300).to_a.sample
    link_id (500..505).to_a.sample
  end
end

#
# create_table "comments", :force => true do |t|
#   t.text     "linnie",            :null => false
#   t.integer  "parent_comment_id"
#   t.integer  "link_id",           :null => false
#   t.datetime "created_at",        :null => false
#   t.datetime "updated_at",        :null => false
# end