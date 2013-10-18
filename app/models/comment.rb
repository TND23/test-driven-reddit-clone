class Comment < ActiveRecord::Base
  attr_accessible :parent_comment_id, :link_id, :linnie
  # belongs_to(:comments, :foreign_key => :parent_comment_id)
#  has_many(:comments, :foreign_key => :parent_comment_id)

  has_many :sub_comments, :class_name => "Comment",
    :foreign_key => "parent_comment_id"
  belongs_to :parent_comment, :class_name => "Comment"

  belongs_to :link, :class_name => "Link", :foreign_key => "link_id"


end
