class Sub < ActiveRecord::Base
  attr_accessible :moderator_id, :name

  belongs_to(:moderator, :class_name => "User", :foreign_key => :moderator_id, :primary_key => :id)

  has_many(:link_subs)

  has_many :links, through: :link_subs
end
