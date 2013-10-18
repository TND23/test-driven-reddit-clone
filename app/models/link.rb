class Link < ActiveRecord::Base
  attr_accessible :title, :url, :user_id, :link_sub_id, :content, :subs

  belongs_to(:user)

  has_many(:link_subs)

  has_many(:subs, through: :link_subs)
end
