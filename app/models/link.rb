class Link < ActiveRecord::Base
  attr_accessible :title, :url, :user_id, :link_sub_id, :content, :subs

  belongs_to(:user)

  has_many(:link_subs)

  has_many(:subs, through: :link_subs)

  has_many :comments, :foreign_key => :link_id, :class_name => "Comment"

  def comments_by_parent_id
    comment_hash = {}
    self.comments.each do |comment_child|
      self.comments.each do |comment_parent|
        if comment_child.parent_id == comment_parent.id
          comment_hash[comment_child.id] += comment_parent #pew pew pew
        end
      end
    end
  end

end
