class Comment < ActiveRecord::Base
  attr_accessible :parent_comment_id, :link_id, :linnie
  #has_many(:comments, :foreign_key => :comments_id)
  belongs_to(:comments, :foreign_key => :parent_comment_id)
end
